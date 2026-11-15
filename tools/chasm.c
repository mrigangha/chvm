/*
 * chasm: assembler for chbc (register VM).
 *
 *   ; comment
 *   .entry main            entry label (default: first instruction)
 *   .code / .data / .bss   switch section
 *   label:                 define label (code offset, or memory address in data/bss)
 *   .file "name.c"         source file for following line entries (default: the .asm file)
 *   .line N                following instructions came from source line N, until the next .line
 *                          (.line 0 goes back to using the .asm line)
 *   .func name / .endfunc  record a function (name must be a code label)
 *   .equ NAME, value       named constant (number, char, or earlier constant)
 *   Predefined constants: SYS_WRITE, SYS_READ, ... (see src/syscalls.h), O_RDONLY,
 *   O_CREAT, SEEK_SET, FD_STDOUT, NULL_PAGE (4096), DATA_BASE (4096), and so on.
 *   SYSCALL SYS_WRITE      system call: args r1..r5, result r0
 *   OP operands            registers: r0..r15, fp (r14), sp (r15)
 *   LD64 r1, [r2+8]        load:  r1 = mem[r2 + 8]
 *   ST64 [r2-8], r1        store: mem[r2 - 8] = r1
 *
 * Data directives (.data):
 *   .byte n[, n...]   .word n|label[+off][, ...]   .ascii "s"   .asciz "s"
 *   .double x[, ...]  .float x[, ...]              .zero n       .align n
 * .bss holds only labels, .zero n and .align n (n <= 16). It is not stored in the file.
 * Memory layout: data at DATA_BASE (4096), then bss (16-byte aligned), then heap (SBRK).
 *
 * Pseudo instructions:
 *   LI rd, value|label[+off]   load any 64-bit constant (1 or 2 instructions)
 *   LIF rd, 3.14               load a double constant (also inf, -inf, nan)
 *   LIFS rd, 3.14              load a 32-bit float constant (low 32 bits, upper 32 zero)
 *   SUBI rd, rs, n             ADDI rd, rs, -n
 *   GT GE GTU GEU              LT LE LTU LEU with swapped operands
 *   FGT FGE FGTS FGES          FLT FLE FLTS FLES with swapped operands
 *   SEL rd, rc, rx, ry         rd = rc != 0 ? rx : ry
 *   BGT BLE BGTU BLEU          BLT BGE BLTU BGEU with swapped operands
 *   BGTI BLEI BGTUI BLEUI      BGEI BLTI BGEUI BLTUI with the constant plus 1
 *   BEQI r, n, L               branch if r == n (n is 16-bit signed)
 *   JTAB r, count, table       if r < count, jump to table + 8*r (a table of JMPs), else fall through
 *
 * Numbers: decimal, 0x hex, 'c' char. Labels and constants may be used wherever
 * an immediate or a branch target is expected, with an optional +n or -n.
 */
#include <ctype.h>
#include <errno.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>

#include "chbc.h"
#include "syscalls.h"


enum { SEC_CODE, SEC_DATA, SEC_BSS };
enum { K_CODE, K_DATA, K_BSS, K_CONST };

typedef struct {
    char *name;
    int64_t value;
    int kind;
    int defined;
} label;

typedef struct {
    uint8_t *p;
    size_t len, cap;
} buf;

/* A reference to a label plus a constant offset. label < 0 means "none". */
typedef struct {
    int label;
    int64_t addend;
} sym;

typedef struct {
    int label;
    int64_t addend;
    int in_data;
    size_t off;
    int line;
} fixup;

static const sym nosym = {-1, 0};

static label *labels;
static int nlabels, caplabels;
static int *htab;       /* open addressing: label index + 1, or 0 for empty */
static size_t hcap;
static buf code, data;
static uint64_t bss_len;
static int have_bss;
static uint64_t bss_base;
static const char *srcname;
static int lineno;
static int errors;
static fixup *fixups;
static size_t nfixups, capfixups;

/* Debug info collected while assembling. */
typedef struct {
    uint32_t off, file, line;
} dline;
typedef struct {
    int label;          /* function name, also its start offset */
    uint32_t start;     /* code offset of .func */
    uint32_t end;       /* code offset after the last instruction */
    int open;
    int line;           /* source line of .func, for error messages */
} dfunc;

static dline *dlines;
static size_t ndlines, capdlines;
static dfunc *dfuncs;
static size_t ndfuncs;
static char **dfiles;
static size_t ndfiles;
static uint32_t cur_file;
static int64_t line_override = -1;
static int no_debug;

static void err(const char *fmt, ...) __attribute__((format(printf, 1, 2)));
static void err(const char *fmt, ...)
{
    va_list ap;
    fprintf(stderr, "%s:%d: ", srcname, lineno);
    va_start(ap, fmt);
    vfprintf(stderr, fmt, ap);
    va_end(ap);
    fputc('\n', stderr);
    errors++;
}

static void put(buf *b, const void *src, size_t n)
{
    if (b->len + n > b->cap) {
        size_t nc = b->cap ? b->cap * 2 : 256;
        while (nc < b->len + n)
            nc *= 2;
        b->p = realloc(b->p, nc);
        if (!b->p) {
            fputs("chasm: out of memory\n", stderr);
            exit(1);
        }
        b->cap = nc;
    }
    if (n)
        memcpy(b->p + b->len, src, n);
    b->len += n;
}

static void put64(buf *b, uint64_t v) { put(b, &v, 8); }

static void put_zeros(buf *b, uint64_t n)
{
    static const uint8_t z[256];
    while (n) {
        size_t k = n > sizeof z ? sizeof z : (size_t)n;
        put(b, z, k);
        n -= k;
    }
}

static void *xrealloc(void *p, size_t n)
{
    p = realloc(p, n);
    if (!p) {
        fputs("chasm: out of memory\n", stderr);
        exit(1);
    }
    return p;
}

static uint32_t hash_name(const char *s, size_t n)
{
    uint32_t h = 2166136261u;
    while (n--)
        h = (h ^ (uint8_t)*s++) * 16777619u;
    return h;
}

static void rehash(size_t newcap)
{
    free(htab);
    htab = xrealloc(NULL, newcap * sizeof *htab);
    memset(htab, 0, newcap * sizeof *htab);
    hcap = newcap;
    for (int i = 0; i < nlabels; i++) {
        size_t k = hash_name(labels[i].name, strlen(labels[i].name)) & (hcap - 1);
        while (htab[k])
            k = (k + 1) & (hcap - 1);
        htab[k] = i + 1;
    }
}

/* Look up a name of n bytes. Returns the label index, or -1 if absent and !create. */
static int find_label_n(const char *name, size_t n, int create)
{
    if (hcap) {
        size_t k = hash_name(name, n) & (hcap - 1);
        while (htab[k]) {
            const label *l = &labels[htab[k] - 1];
            if (!strncmp(l->name, name, n) && !l->name[n])
                return htab[k] - 1;
            k = (k + 1) & (hcap - 1);
        }
    }
    if (!create)
        return -1;
    if (nlabels == caplabels) {
        caplabels = caplabels ? caplabels * 2 : 256;
        labels = xrealloc(labels, (size_t)caplabels * sizeof *labels);
    }
    if ((size_t)(nlabels + 1) * 2 > hcap)
        rehash(hcap ? hcap * 2 : 1024);
    label *l = &labels[nlabels];
    memset(l, 0, sizeof *l);
    l->name = xrealloc(NULL, n + 1);
    memcpy(l->name, name, n);
    l->name[n] = 0;
    size_t k = hash_name(name, n) & (hcap - 1);
    while (htab[k])
        k = (k + 1) & (hcap - 1);
    htab[k] = ++nlabels;
    return nlabels - 1;
}

static int find_label(const char *name, int create)
{
    return find_label_n(name, strlen(name), create);
}

static char *trim(char *s)
{
    while (isspace((unsigned char)*s))
        s++;
    char *e = s + strlen(s);
    while (e > s && isspace((unsigned char)e[-1]))
        *--e = 0;
    return s;
}

static void strip_comment(char *s)
{
    int in_str = 0, in_chr = 0;
    for (; *s; s++) {
        if (*s == '\\' && s[1]) {
            s++;
        } else if (*s == '"' && !in_chr) {
            in_str = !in_str;
        } else if (*s == '\'' && !in_str) {
            in_chr = !in_chr;
        } else if (*s == ';' && !in_str && !in_chr) {
            *s = 0;
            return;
        }
    }
}

static int is_ident_start(int c) { return isalpha(c) || c == '_' || c == '.'; }
static int is_ident(int c) { return isalnum(c) || c == '_' || c == '.'; }

static int escape(const char **ps)
{
    const char *s = *ps;
    int c = (unsigned char)*s++;
    if (c == '\\') {
        c = (unsigned char)*s++;
        switch (c) {
        case 'n': c = '\n'; break;
        case 't': c = '\t'; break;
        case 'r': c = '\r'; break;
        case '0': c = 0; break;
        case '\\': case '\'': case '"': break;
        default: err("bad escape '\\%c'", c); c = 0;
        }
    }
    *ps = s;
    return c;
}

/* Parse a number or char literal. Returns 0 on success. */
static int parse_num(const char *s, int64_t *out)
{
    if (s[0] == '\'') {
        const char *p = s + 1;
        if (!*p)
            return -1;
        int c = escape(&p);
        if (*p != '\'' || p[1])
            return -1;
        *out = c;
        return 0;
    }
    char *end;
    errno = 0;
    if (s[0] == '-' || s[0] == '+') {
        long long v = strtoll(s, &end, 0);
        if (end == s || *end || errno)
            return -1;
        *out = v;
        return 0;
    }
    unsigned long long v = strtoull(s, &end, 0);
    if (end == s || *end || errno)
        return -1;
    *out = (int64_t)v;
    return 0;
}

/* Parse a floating-point literal. Returns 0 on success. */
static int parse_float(const char *s, double *out)
{
    char *end;
    errno = 0;
    if (!*s || isspace((unsigned char)*s))
        return -1;
    if (!strncasecmp(s, "0x", 2) || !strncasecmp(s, "-0x", 3))
        return -1;
    double d = strtod(s, &end);
    if (end == s || *end)
        return -1;
    *out = d;
    return 0;
}

/* Returns the register number, or -1 if the token is not a register. */
static int reg_tok(const char *t)
{
    char c0 = (char)(t[0] | 0x20);   /* lower-case a letter, harmless for anything else here */
    if (c0 == 'r') {
        /* r0 .. r15, with no leading zero: "r5", "r15" */
        unsigned d1 = (unsigned char)t[1] - '0';
        if (d1 > 9)
            return -1;
        if (!t[2])
            return (int)d1;
        unsigned d2 = (unsigned char)t[2] - '0';
        if (d1 == 0 || d2 > 9 || t[3])
            return -1;
        unsigned v = d1 * 10 + d2;
        return v < CHBC_NREGS ? (int)v : -1;
    }
    if (c0 == 'f' && (t[1] | 0x20) == 'p' && !t[2])
        return CHBC_REG_FP;
    if (c0 == 's' && (t[1] | 0x20) == 'p' && !t[2])
        return CHBC_REG_SP;
    return -1;
}

static int reg(const char *t)
{
    int r = reg_tok(t);
    if (r < 0) {
        err("expected a register, got '%s'", t);
        return 0;
    }
    return r;
}

/*
 * Split "name", "name+n" or "name-n" into a label and an addend.
 * Returns the label index, or -1 if the token is not a label reference.
 */
static int parse_sym(const char *tok, int64_t *addend)
{
    size_t n = 0;
    *addend = 0;
    if (!is_ident_start((unsigned char)tok[0]))
        return -1;
    while (is_ident((unsigned char)tok[n]))
        n++;
    char *name = xrealloc(NULL, n + 1);
    memcpy(name, tok, n);
    name[n] = 0;
    int bad = reg_tok(name) >= 0;
    free(name);
    if (bad)
        return -1;
    if (tok[n]) {
        if ((tok[n] != '+' && tok[n] != '-') || parse_num(tok + n, addend))
            return -1;
    }
    return find_label_n(tok, n, 1);
}

static int sym_is_const(int l) { return l >= 0 && labels[l].defined && labels[l].kind == K_CONST; }

/* Evaluate a number or an already defined constant. Returns 0 on success. */
static int eval_const(const char *tok, int64_t *v)
{
    if (!parse_num(tok, v))
        return 0;
    int64_t add;
    int l = parse_sym(tok, &add);
    if (!sym_is_const(l))
        return -1;
    *v = labels[l].value + add;
    return 0;
}

static void add_fixup(sym sy, int in_data, size_t off)
{
    if (nfixups == capfixups) {
        capfixups = capfixups ? capfixups * 2 : 64;
        fixups = realloc(fixups, capfixups * sizeof *fixups);
        if (!fixups) {
            fputs("chasm: out of memory\n", stderr);
            exit(1);
        }
    }
    fixups[nfixups++] = (fixup){sy.label, sy.addend, in_data, off, lineno};
}

static uint32_t add_dfile(const char *name)
{
    for (size_t i = 0; i < ndfiles; i++)
        if (!strcmp(dfiles[i], name))
            return (uint32_t)i;
    dfiles = xrealloc(dfiles, (ndfiles + 1) * sizeof *dfiles);
    size_t n = strlen(name) + 1;
    dfiles[ndfiles] = xrealloc(NULL, n);
    memcpy(dfiles[ndfiles], name, n);
    return (uint32_t)ndfiles++;
}

/* One line entry per source line: consecutive instructions on the same line share it. */
static void record_line(void)
{
    uint32_t line = line_override >= 0 ? (uint32_t)line_override : (uint32_t)lineno;
    if (ndlines && dlines[ndlines - 1].file == cur_file && dlines[ndlines - 1].line == line)
        return;
    if (ndlines == capdlines) {
        capdlines = capdlines ? capdlines * 2 : 256;
        dlines = xrealloc(dlines, capdlines * sizeof *dlines);
    }
    dlines[ndlines++] = (dline){(uint32_t)code.len, cur_file, line};
}

static void emit(int op, int a, int b, int c, int32_t imm)
{
    if (code.len % CHBC_INSN_SIZE == 0)
        record_line();
    chbc_insn in = {(uint8_t)op, (uint8_t)a, (uint8_t)b, (uint8_t)c, imm};
    put(&code, &in, sizeof in);
}

/* Byte offset of the imm field of the instruction just emitted. */
static size_t last_imm_off(void) { return code.len - CHBC_INSN_SIZE + 4; }

static void emit_fix(sym sy)
{
    if (sy.label >= 0)
        add_fixup(sy, 0, last_imm_off());
}

/*
 * Parse an immediate, a defined constant, or a label reference. Numbers and
 * defined constants set *v and return nosym. A label returns a sym to patch.
 */
static sym imm_tok(const char *tok, int32_t *v, int allow_u32)
{
    int64_t n;
    int64_t hi = allow_u32 ? (int64_t)UINT32_MAX : (int64_t)INT32_MAX;
    *v = 0;

    int l = -1;
    int64_t add = 0;
    if (parse_num(tok, &n)) {
        l = parse_sym(tok, &add);
        if (l < 0) {
            err("bad operand '%s'", tok);
            return nosym;
        }
        if (!sym_is_const(l))
            return (sym){l, add};
        n = labels[l].value + add;
    }
    if (n < INT32_MIN || n > hi)
        err("immediate out of 32-bit range: %s", tok);
    else
        *v = (int32_t)n;
    return nosym;
}

/* Parses the text between the brackets of "[reg]", "[reg+off]" or "[reg-off]". */
static sym mem_inner(char *inner, const char *tok, int *r, int32_t *off)
{
    char *sign = NULL;
    for (char *p = inner + 1; *p; p++) {
        if (*p == '+' || *p == '-') {
            sign = p;
            break;
        }
    }
    if (!sign) {
        *r = reg(inner);
        return nosym;
    }
    char *offstr = *sign == '+' ? sign + 1 : sign;
    if (!*offstr) {
        err("bad memory operand '%s'", tok);
        return nosym;
    }
    char keep = *sign;
    *sign = 0;
    *r = reg(inner);
    *sign = keep;
    return imm_tok(offstr, off, 0);
}

/* Parse "[reg]", "[reg+off]" or "[reg-off]". The offset may be a label. */
static sym mem_tok(const char *tok, int *r, int32_t *off)
{
    size_t n = strlen(tok), k = 0;
    *r = 0;
    *off = 0;
    if (n < 3 || tok[0] != '[' || tok[n - 1] != ']') {
        err("expected [reg+offset], got '%s'", tok);
        return nosym;
    }
    char *inner = xrealloc(NULL, n + 1);
    for (size_t i = 1; i < n - 1; i++)
        if (!isspace((unsigned char)tok[i]))
            inner[k++] = tok[i];
    inner[k] = 0;
    sym result = mem_inner(inner, tok, r, off);
    free(inner);
    return result;
}

/* Parse a float literal straight to single precision, with no double rounding. */
static int parse_float32(const char *s, float *out)
{
    char *end;
    if (!*s || isspace((unsigned char)*s))
        return -1;
    if (!strncasecmp(s, "0x", 2) || !strncasecmp(s, "-0x", 3))
        return -1;
    float f = strtof(s, &end);
    if (end == s || *end)
        return -1;
    *out = f;
    return 0;
}

static int ieq(const char *a, const char *b) { return !strcasecmp(a, b); }

/*
 * Mnemonic lookup. Names are case-insensitive, so the table is keyed on the upper-case spelling.
 * Open addressing, built once on first use. It was a linear scan of every opcode with strcasecmp,
 * which took about 70 percent of the assembler's time.
 */
#define OPTAB_SIZE 1024   /* a power of two, more than twice the number of opcodes */

_Static_assert(OPTAB_SIZE >= 2 * OP_COUNT, "grow OPTAB_SIZE: the mnemonic table must stay less than half full");

static int optab[OPTAB_SIZE];   /* opcode + 1, or 0 for an empty slot */
static int optab_ready;

static uint32_t op_hash(const char *s)
{
    uint32_t h = 2166136261u;
    for (; *s; s++)
        h = (h ^ (uint8_t)toupper((unsigned char)*s)) * 16777619u;
    return h;
}

static void optab_build(void)
{
    for (int i = 0; i < OP_COUNT; i++) {
        uint32_t k = op_hash(chbc_op_name[i]) & (OPTAB_SIZE - 1);
        while (optab[k])
            k = (k + 1) & (OPTAB_SIZE - 1);
        optab[k] = i + 1;
    }
    optab_ready = 1;
}

static int find_op(const char *name)
{
    if (!optab_ready)
        optab_build();
    uint32_t k = op_hash(name) & (OPTAB_SIZE - 1);
    while (optab[k]) {
        if (ieq(chbc_op_name[optab[k] - 1], name))
            return optab[k] - 1;
        k = (k + 1) & (OPTAB_SIZE - 1);
    }
    return -1;
}

/* Splits operands in place. *argv is grown as needed and must be freed by the caller. */
static int split_args(char *s, char ***argv)
{
    int n = 0, cap = 0;
    *argv = NULL;
    while (*s) {
        while (isspace((unsigned char)*s) || *s == ',')
            s++;
        if (!*s)
            break;
        if (n == cap) {
            cap = cap ? cap * 2 : 8;
            *argv = xrealloc(*argv, (size_t)cap * sizeof **argv);
        }
        (*argv)[n++] = s;
        if (*s == '"') {
            s++;
            while (*s && *s != '"') {
                if (*s == '\\' && s[1])
                    s++;
                s++;
            }
            if (*s)
                s++;
        } else if (*s == '[') {
            while (*s && *s != ']')
                s++;
            if (*s)
                s++;
        } else {
            while (*s && !isspace((unsigned char)*s) && *s != ',')
                s++;
        }
        if (*s)
            *s++ = 0;
    }
    return n;
}

static void data_string(const char *tok, int zero)
{
    size_t n = strlen(tok);
    if (n < 2 || tok[0] != '"' || tok[n - 1] != '"') {
        err("expected quoted string");
        return;
    }
    const char *p = tok + 1;
    const char *end = tok + n - 1;
    while (p < end) {
        uint8_t c = (uint8_t)escape(&p);
        put(&data, &c, 1);
    }
    if (zero) {
        uint8_t z = 0;
        put(&data, &z, 1);
    }
}

static void set_label(const char *name, int kind, int64_t value)
{
    int l = find_label(name, 1);
    if (l < 0)
        return;
    if (reg_tok(name) >= 0) {
        err("'%s' is a register name", name);
        return;
    }
    if (labels[l].defined) {
        err("label '%s' defined twice", name);
        return;
    }
    labels[l].defined = 1;
    labels[l].kind = kind;
    labels[l].value = value;
}

static void define_label(const char *name, int section)
{
    switch (section) {
    case SEC_CODE: set_label(name, K_CODE, (int64_t)code.len); break;
    case SEC_DATA: set_label(name, K_DATA, (int64_t)data.len); break;
    default:       set_label(name, K_BSS, (int64_t)bss_len); break;
    }
}

static int pow2(int64_t n) { return n > 0 && (n & (n - 1)) == 0; }

static void directive(const char *name, char **args, int nargs, int *section, int *entry)
{
    int64_t n;

    if (!strcmp(name, ".code")) {
        *section = SEC_CODE;
    } else if (!strcmp(name, ".data")) {
        *section = SEC_DATA;
    } else if (!strcmp(name, ".bss")) {
        *section = SEC_BSS;
        have_bss = 1;
    } else if (!strcmp(name, ".file")) {
        size_t n = nargs == 1 ? strlen(args[0]) : 0;
        if (n < 2 || args[0][0] != '"' || args[0][n - 1] != '"') {
            err(".file needs a quoted name");
            return;
        }
        char *nm = xrealloc(NULL, n);
        memcpy(nm, args[0] + 1, n - 2);
        nm[n - 2] = 0;
        cur_file = add_dfile(nm);
        free(nm);
    } else if (!strcmp(name, ".line")) {
        if (nargs != 1 || eval_const(args[0], &n) || n < 0 || n > INT32_MAX) {
            err(".line needs a line number");
            return;
        }
        line_override = n ? n : -1;
    } else if (!strcmp(name, ".func")) {
        int l = nargs == 1 ? find_label(args[0], 1) : -1;
        if (l < 0) {
            err(".func needs a name");
            return;
        }
        if (ndfuncs && dfuncs[ndfuncs - 1].open) {
            err(".func '%s' starts before .endfunc of '%s'", args[0],
                labels[dfuncs[ndfuncs - 1].label].name);
            return;
        }
        if (*section != SEC_CODE) {
            err(".func is only valid in .code");
            return;
        }
        dfuncs = xrealloc(dfuncs, (ndfuncs + 1) * sizeof *dfuncs);
        dfuncs[ndfuncs++] = (dfunc){l, (uint32_t)code.len, 0, 1, lineno};
    } else if (!strcmp(name, ".endfunc")) {
        if (!ndfuncs || !dfuncs[ndfuncs - 1].open) {
            err(".endfunc without .func");
            return;
        }
        dfuncs[ndfuncs - 1].end = (uint32_t)code.len;
        dfuncs[ndfuncs - 1].open = 0;
        if (dfuncs[ndfuncs - 1].end == dfuncs[ndfuncs - 1].start)
            err(".func '%s' is empty", labels[dfuncs[ndfuncs - 1].label].name);
    } else if (!strcmp(name, ".entry")) {
        if (nargs != 1) {
            err(".entry needs a label");
            return;
        }
        *entry = find_label(args[0], 1);
    } else if (!strcmp(name, ".equ")) {
        if (nargs != 2 || !is_ident_start((unsigned char)args[0][0])) {
            err(".equ needs a name and a value");
            return;
        }
        if (eval_const(args[1], &n)) {
            err(".equ value must be a number or an earlier constant: '%s'", args[1]);
            return;
        }
        set_label(args[0], K_CONST, n);
    } else if (*section == SEC_CODE) {
        err("directive %s is not valid in .code", name);
    } else if (!strcmp(name, ".zero")) {
        int64_t max = *section == SEC_BSS ? (1 << 30) : (1 << 24);
        if (nargs != 1 || eval_const(args[0], &n) || n < 0 || n > max) {
            err(".zero needs a count from 0 to %lld", (long long)max);
            return;
        }
        if (*section == SEC_BSS)
            bss_len += (uint64_t)n;
        else
            put_zeros(&data, (uint64_t)n);
    } else if (!strcmp(name, ".align")) {
        int64_t max = *section == SEC_BSS ? 16 : 4096;
        if (nargs != 1 || eval_const(args[0], &n) || !pow2(n) || n > max) {
            err(".align needs a power of two up to %lld", (long long)max);
            return;
        }
        if (*section == SEC_BSS)
            bss_len = (bss_len + (uint64_t)n - 1) & ~((uint64_t)n - 1);
        else
            put_zeros(&data, (((uint64_t)data.len + (uint64_t)n - 1) & ~((uint64_t)n - 1)) - data.len);
    } else if (*section == SEC_BSS) {
        err("only labels, .zero and .align are valid in .bss");
    } else if (!strcmp(name, ".byte")) {
        for (int i = 0; i < nargs; i++) {
            if (eval_const(args[i], &n)) {
                err("bad number '%s'", args[i]);
                continue;
            }
            uint8_t b = (uint8_t)n;
            put(&data, &b, 1);
        }
    } else if (!strcmp(name, ".word")) {
        for (int i = 0; i < nargs; i++) {
            if (!eval_const(args[i], &n)) {
                put64(&data, (uint64_t)n);
                continue;
            }
            int64_t add;
            int l = parse_sym(args[i], &add);
            if (l < 0) {
                err("bad number or label '%s'", args[i]);
                continue;
            }
            add_fixup((sym){l, add}, 1, data.len);
            put64(&data, 0);
        }
    } else if (!strcmp(name, ".double") || !strcmp(name, ".float")) {
        int is_f32 = name[1] == 'f';
        for (int i = 0; i < nargs; i++) {
            if (is_f32) {
                float f;
                if (parse_float32(args[i], &f)) {
                    err("bad float '%s'", args[i]);
                    continue;
                }
                put(&data, &f, 4);
            } else {
                double d;
                if (parse_float(args[i], &d)) {
                    err("bad float '%s'", args[i]);
                    continue;
                }
                put(&data, &d, 8);
            }
        }
    } else if (!strcmp(name, ".ascii") || !strcmp(name, ".asciz")) {
        if (nargs != 1)
            err("%s needs one string", name);
        else
            data_string(args[0], name[5] == 'z');
    } else {
        err("unknown directive %s", name);
    }
}

static void assemble_li(char **args, int nargs)
{
    if (nargs != 2) {
        err("LI takes 2 operands, got %d", nargs);
        return;
    }
    int a = reg(args[0]);
    int64_t v;
    if (!eval_const(args[1], &v)) {
        uint64_t u = (uint64_t)v;
        if (v >= INT32_MIN && v <= INT32_MAX) {
            emit(OP_MOVI, a, 0, 0, (int32_t)v);
        } else {
            emit(OP_MOVI, a, 0, 0, (int32_t)(uint32_t)u);
            emit(OP_MOVHI, a, 0, 0, (int32_t)(uint32_t)(u >> 32));
        }
        return;
    }
    int64_t add;
    int l = parse_sym(args[1], &add);
    if (l < 0) {
        err("bad operand '%s'", args[1]);
        return;
    }
    emit(OP_MOVI, a, 0, 0, 0);
    emit_fix((sym){l, add});
}

static void assemble_lif(char **args, int nargs)
{
    double d;
    if (nargs != 2) {
        err("LIF takes 2 operands, got %d", nargs);
        return;
    }
    int a = reg(args[0]);
    if (parse_float(args[1], &d)) {
        err("bad float '%s'", args[1]);
        return;
    }
    uint64_t u;
    memcpy(&u, &d, 8);
    emit(OP_MOVI, a, 0, 0, (int32_t)(uint32_t)u);
    emit(OP_MOVHI, a, 0, 0, (int32_t)(uint32_t)(u >> 32));
}

/* LIFS: a float constant in the low 32 bits, upper 32 bits zero. */
static void assemble_lifs(char **args, int nargs)
{
    float f;
    if (nargs != 2) {
        err("LIFS takes 2 operands, got %d", nargs);
        return;
    }
    int a = reg(args[0]);
    if (parse_float32(args[1], &f)) {
        err("bad float '%s'", args[1]);
        return;
    }
    uint32_t bits;
    memcpy(&bits, &f, 4);
    emit(OP_MOVI, a, 0, 0, (int32_t)bits);
    if ((int32_t)bits < 0)
        emit(OP_MOVHI, a, 0, 0, 0);
}

/*
 * BFLTK r, constant, target and its relatives: a float compare with a 32-bit whole number, in two
 * instruction slots. The second slot is a KDATA that holds the constant. The assembler writes both.
 */
static void assemble_branch_k(const char *name, int op, char **args, int nargs)
{
    int64_t k;
    if (nargs != 3) {
        err("%s takes 3 operands, got %d", name, nargs);
        return;
    }
    int r = reg(args[0]);
    if (eval_const(args[1], &k) || k < INT32_MIN || k > INT32_MAX) {
        err("%s needs a whole-number constant from -2147483648 to 2147483647, got '%s'", name, args[1]);
        return;
    }
    int32_t imm = 0;
    sym sy = imm_tok(args[2], &imm, 0);
    emit(op, r, 0, 0, imm);
    emit_fix(sy);
    emit(OP_KDATA, 0, 0, 0, (int32_t)k);
}

static void assemble_insn(const char *name, int op, char **args, int nargs)
{
    if (op >= OP_BFLTK && op <= OP_BFNEK) {
        assemble_branch_k(name, op, args, nargs);
        return;
    }
    static const uint8_t want[] = {
        [F_NONE] = 0, [F_R] = 1, [F_RR] = 2, [F_RRR] = 3, [F_RI] = 2, [F_RRI] = 3,
        [F_LD] = 2, [F_ST] = 2, [F_J] = 1, [F_RJ] = 2, [F_RRJ] = 3, [F_I] = 1, [F_RIJ] = 3, [F_RRRR] = 4,
    };
    unsigned fmt = chbc_op_fmt[op];
    if (nargs != want[fmt]) {
        err("%s takes %d operand(s), got %d", name, want[fmt], nargs);
        return;
    }

    int a = 0, b = 0, c = 0;
    sym sy = nosym;
    int32_t imm = 0;
    switch (fmt) {
    case F_NONE:
        break;
    case F_R:
        a = reg(args[0]);
        break;
    case F_RR:
        a = reg(args[0]);
        b = reg(args[1]);
        break;
    case F_RRR:
        a = reg(args[0]);
        b = reg(args[1]);
        c = reg(args[2]);
        break;
    case F_RI:
        a = reg(args[0]);
        sy = imm_tok(args[1], &imm, op == OP_MOVHI);
        break;
    case F_RRI:
        a = reg(args[0]);
        b = reg(args[1]);
        sy = imm_tok(args[2], &imm, 0);
        break;
    case F_LD:
        a = reg(args[0]);
        sy = mem_tok(args[1], &b, &imm);
        break;
    case F_ST:
        sy = mem_tok(args[0], &b, &imm);
        c = reg(args[1]);
        break;
    case F_J:
        sy = imm_tok(args[0], &imm, 0);
        break;
    case F_RJ:
        a = reg(args[0]);
        sy = imm_tok(args[1], &imm, 0);
        break;
    case F_RRJ:
        a = reg(args[0]);
        b = reg(args[1]);
        sy = imm_tok(args[2], &imm, 0);
        break;
    case F_I:
        sy = imm_tok(args[0], &imm, 0);
        break;
    case F_RRRR:
        a = reg(args[0]);
        b = reg(args[1]);
        c = reg(args[2]);
        imm = reg(args[3]);
        break;
    case F_RIJ: {
        int64_t v = 0;
        int64_t lo = op == OP_JTAB ? 0 : -32768, hi = op == OP_JTAB ? 65535 : 32767;
        a = reg(args[0]);
        if (eval_const(args[1], &v) || v < lo || v > hi) {
            err("%s needs a constant from %lld to %lld, got '%s'", name, (long long)lo,
                (long long)hi, args[1]);
            v = 0;
        }
        b = (int)(v & 0xff);
        c = (int)((v >> 8) & 0xff);
        sy = imm_tok(args[2], &imm, 0);
        break;
    }
    }
    emit(op, a, b, c, imm);
    emit_fix(sy);
}

/* BGTI r, n, L is BGEI r, n+1, L. Unsigned forms need n >= 0 so that n+1 cannot wrap. */
static const struct {
    const char *name;
    int op;
    int unsigned_form;
} plus_one[] = {
    {"BGTI", OP_BGEI, 0}, {"BLEI", OP_BLTI, 0}, {"BGTUI", OP_BGEUI, 1}, {"BLEUI", OP_BLTUI, 1},
};

static const struct {
    const char *name;
    int op;
} swapped[] = {
    {"GT", OP_LT},   {"GE", OP_LE},   {"GTU", OP_LTU},   {"GEU", OP_LEU},
    {"FGT", OP_FLT}, {"FGE", OP_FLE}, {"FGTS", OP_FLTS}, {"FGES", OP_FLES},
    {"BGT", OP_BLT}, {"BLE", OP_BGE}, {"BGTU", OP_BLTU}, {"BLEU", OP_BGEU},
};

static void assemble_stmt(char *name, char **args, int nargs, int *section, int *entry);

static void assemble_line(char *line, int *section, int *entry)
{
    strip_comment(line);
    char *s = trim(line);

    while (is_ident_start((unsigned char)*s) && s[0] != '.') {
        char *e = s;
        while (is_ident((unsigned char)*e))
            e++;
        char *after = e;
        while (isspace((unsigned char)*after))
            after++;
        if (*after != ':')
            break;
        *e = 0;
        define_label(s, *section);
        s = trim(after + 1);
    }
    if (!*s)
        return;

    char *name = s;
    while (*s && !isspace((unsigned char)*s))
        s++;
    if (*s)
        *s++ = 0;

    char **args;
    int nargs = split_args(s, &args);
    assemble_stmt(name, args, nargs, section, entry);
    free(args);
}

static void assemble_stmt(char *name, char **args, int nargs, int *section, int *entry)
{
    if (name[0] == '.') {
        directive(name, args, nargs, section, entry);
        return;
    }
    if (*section != SEC_CODE) {
        err("instruction outside .code");
        return;
    }

    /*
     * Real opcodes are by far the most common line, so look the name up first. A name that is also
     * a pseudo-instruction never collides with an opcode, so this changes no behaviour.
     */
    int real = find_op(name);
    if (real >= 0) {
        assemble_insn(name, real, args, nargs);
        return;
    }

    if (ieq(name, "LI")) {
        assemble_li(args, nargs);
        return;
    }
    if (ieq(name, "LIF")) {
        assemble_lif(args, nargs);
        return;
    }
    if (ieq(name, "LIFS")) {
        assemble_lifs(args, nargs);
        return;
    }
    if (ieq(name, "SUBI")) {
        char neg[32];
        int64_t v;
        if (nargs != 3 || eval_const(args[2], &v)) {
            err("SUBI takes rd, rs, number");
            return;
        }
        snprintf(neg, sizeof neg, "%lld", (long long)-v);
        args[2] = neg;
        assemble_insn(name, OP_ADDI, args, nargs);
        return;
    }
    for (size_t i = 0; i < sizeof plus_one / sizeof *plus_one; i++) {
        if (!ieq(name, plus_one[i].name))
            continue;
        char num[32];
        int64_t v;
        if (nargs != 3 || eval_const(args[1], &v)) {
            err("%s takes register, constant, label", name);
            return;
        }
        if (plus_one[i].unsigned_form && v < 0) {
            err("%s needs a constant that is not negative", name);
            return;
        }
        snprintf(num, sizeof num, "%lld", (long long)v + 1);
        args[1] = num;
        assemble_insn(name, plus_one[i].op, args, nargs);
        return;
    }
    for (size_t i = 0; i < sizeof swapped / sizeof *swapped; i++) {
        if (!ieq(name, swapped[i].name))
            continue;
        int op = swapped[i].op;
        int first = chbc_op_fmt[op] == F_RRJ ? 0 : 1;
        if (nargs >= first + 2) {
            char *t = args[first];
            args[first] = args[first + 1];
            args[first + 1] = t;
        }
        assemble_insn(name, op, args, nargs);
        return;
    }

    err("unknown instruction '%s'", name);
}

static int64_t label_value(const label *l)
{
    switch (l->kind) {
    case K_DATA: return CHBC_DATA_BASE + l->value;
    case K_BSS:  return CHBC_DATA_BASE + (int64_t)bss_base + l->value;
    default:     return l->value;
    }
}

static void predefine(const char *name, int64_t v)
{
    int l = find_label(name, 1);
    labels[l].defined = 1;
    labels[l].kind = K_CONST;
    labels[l].value = v;
}

static void predefine_all(void)
{
#define X(n, num) predefine("SYS_" #n, num);
    CHBC_SYSCALLS(X)
#undef X
#define X(n, v) predefine(n, v);
    CHBC_CONSTANTS(X)
#undef X
    predefine("NULL_PAGE", CHBC_NULL_PAGE);
    predefine("DATA_BASE", CHBC_DATA_BASE);
}

static int resolve(void)
{
    for (size_t i = 0; i < nfixups; i++) {
        fixup *f = &fixups[i];
        label *l = &labels[f->label];
        lineno = f->line;
        if (!l->defined) {
            err("undefined label '%s'", l->name);
            continue;
        }
        int64_t v = label_value(l) + f->addend;
        if (f->in_data) {
            memcpy(data.p + f->off, &v, 8);
            continue;
        }
        chbc_insn in;
        uint8_t *at = code.p + f->off - 4;
        memcpy(&in, at, sizeof in);
        if (chbc_fmt_is_branch(chbc_op_fmt[in.op]) && l->kind != K_CODE) {
            err("branch target '%s' is not a code label", l->name);
            continue;
        }
        if (v < INT32_MIN || v > INT32_MAX) {
            err("value of '%s' is out of 32-bit range", l->name);
            continue;
        }
        in.imm = (int32_t)v;
        memcpy(at, &in, sizeof in);
    }
    return errors;
}

static void put32(buf *b, uint32_t v) { put(b, &v, 4); }

static uint32_t add_str(buf *tab, const char *s)
{
    uint32_t off = (uint32_t)tab->len;
    put(tab, s, strlen(s) + 1);
    return off;
}

/* Builds the debug section, see chbc.c for the layout. Empty when -g was not asked for. */
static void build_debug(buf *out)
{
    buf str = {0};
    size_t nfuncs = 0;
    nfuncs = ndfuncs;

    put32(out, (uint32_t)ndfiles);
    put32(out, (uint32_t)nfuncs);
    put32(out, (uint32_t)ndlines);
    size_t hdr_at = out->len;
    put32(out, 0);

    for (size_t i = 0; i < ndfiles; i++)
        put32(out, add_str(&str, dfiles[i]));

    /* Functions must be sorted by start. Source order is not guaranteed to be. */
    size_t *order = xrealloc(NULL, (ndfuncs + 1) * sizeof *order);
    for (size_t i = 0; i < ndfuncs; i++)
        order[i] = i;
    for (size_t i = 1; i < ndfuncs; i++) {
        size_t k = order[i];
        size_t j = i;
        while (j && dfuncs[order[j - 1]].start > dfuncs[k].start) {
            order[j] = order[j - 1];
            j--;
        }
        order[j] = k;
    }
    for (size_t i = 0; i < ndfuncs; i++) {
        dfunc *d = &dfuncs[order[i]];
        put32(out, d->start);
        put32(out, d->end - d->start);
        put32(out, add_str(&str, labels[d->label].name));
    }
    free(order);

    for (size_t i = 0; i < ndlines; i++) {
        put32(out, dlines[i].off);
        put32(out, dlines[i].file);
        put32(out, dlines[i].line);
    }
    memcpy(out->p + hdr_at, &(uint32_t){(uint32_t)str.len}, 4);
    put(out, str.p, str.len);
    free(str.p);
}

static int check_funcs(void)
{
    for (size_t i = 0; i < ndfuncs; i++) {
        dfunc *d = &dfuncs[i];
        lineno = d->line;
        if (d->open) {
            err(".func '%s' has no .endfunc", labels[d->label].name);
            continue;
        }
        const label *l = &labels[d->label];
        if (!l->defined || l->kind != K_CODE)
            err(".func '%s' is not a code label", l->name);
        else if ((uint32_t)l->value != d->start)
            err(".func '%s': its label is not at the start of the function", l->name);
    }
    return errors;
}

static void free_all(void)
{
    for (int i = 0; i < nlabels; i++)
        free(labels[i].name);
    free(labels);
    free(htab);
    free(fixups);
    free(dlines);
    free(dfuncs);
    for (size_t i = 0; i < ndfiles; i++)
        free(dfiles[i]);
    free(dfiles);
    free(code.p);
    free(data.p);
}

static int run(int argc, char **argv);

int main(int argc, char **argv)
{
    int rc = run(argc, argv);
    free_all();
    return rc;
}

static int run(int argc, char **argv)
{
    int strip = 0;
    int ai = 1;
    if (ai < argc && !strcmp(argv[ai], "-s")) {
        strip = 1;
        ai++;
    }
    if (argc - ai != 2) {
        fputs("usage: chasm [-s] in.asm out.chbc\n"
              "  -s  do not write the debug section (line table and function names)\n",
              stderr);
        return 1;
    }
    no_debug = strip;
    srcname = argv[ai];
    FILE *f = fopen(argv[ai], "r");
    if (!f) {
        perror(argv[ai]);
        return 1;
    }
    cur_file = add_dfile(srcname);

    predefine_all();
    char *line = NULL;
    size_t linecap = 0;
    int section = SEC_CODE, entry = -1;
    while (getline(&line, &linecap, f) >= 0) {
        lineno++;
        assemble_line(line, &section, &entry);
    }
    free(line);
    fclose(f);

    if (!code.len)
        err("no code");

    if (have_bss)
        put_zeros(&data, ((data.len + 15) & ~(size_t)15) - data.len);
    bss_base = data.len;
    if (bss_base + bss_len > UINT32_MAX)
        err("data and bss are too large");

    if (resolve() || errors)
        return 1;
    if (check_funcs())
        return 1;

    uint32_t entry_off = 0;
    if (entry >= 0) {
        if (!labels[entry].defined || labels[entry].kind != K_CODE) {
            lineno = 0;
            err("entry label '%s' is not a defined code label", labels[entry].name);
            return 1;
        }
        entry_off = (uint32_t)labels[entry].value;
    }

    buf dbg = {0};
    if (!no_debug)
        build_debug(&dbg);

    uint8_t hdr[CHBC_HEADER_SIZE] = {'C', 'H', 'B', 'C', CHBC_VERSION, 0, 0, 0};
    uint32_t cs = (uint32_t)code.len, ds = (uint32_t)data.len, bs = (uint32_t)bss_len;
    uint32_t dbs = (uint32_t)dbg.len;
    memcpy(hdr + 24, &dbs, 4);
    memcpy(hdr + 8, &entry_off, 4);
    memcpy(hdr + 12, &cs, 4);
    memcpy(hdr + 16, &ds, 4);
    memcpy(hdr + 20, &bs, 4);

    FILE *o = fopen(argv[ai + 1], "wb");
    if (!o) {
        perror(argv[ai + 1]);
        free(dbg.p);
        return 1;
    }
    fwrite(hdr, 1, sizeof hdr, o);
    fwrite(code.p, 1, code.len, o);
    if (data.len)
        fwrite(data.p, 1, data.len, o);
    if (dbg.len)
        fwrite(dbg.p, 1, dbg.len, o);
    free(dbg.p);
    if (fclose(o)) {
        perror(argv[ai + 1]);
        return 1;
    }
    return 0;
}
