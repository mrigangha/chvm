#include "chbc.h"

#include <stdio.h>
#include <stdlib.h>

const char *const chbc_op_name[OP_COUNT] = {
#define X(name, fmt) #name,
    CHBC_OPCODES(X)
#undef X
};

const uint8_t chbc_op_fmt[OP_COUNT] = {
#define X(name, fmt) fmt,
    CHBC_OPCODES(X)
#undef X
};

static uint32_t rd32le(const uint8_t *p)
{
    return (uint32_t)p[0] | (uint32_t)p[1] << 8 | (uint32_t)p[2] << 16 |
           (uint32_t)p[3] << 24;
}

/* Checks the header of an image in memory and fills img. Does not copy or take ownership of buf. */
chbc_err chbc_load_mem(const uint8_t *buf, size_t len, chbc_image *img)
{
    memset(img, 0, sizeof *img);
    if (len < CHBC_HEADER_SIZE || len > CHBC_MAX_FILE)
        return CHBC_E_SIZE;
    if (memcmp(buf, "CHBC", 4) != 0)
        return CHBC_E_MAGIC;
    if ((unsigned)(buf[4] | buf[5] << 8) != CHBC_VERSION)
        return CHBC_E_VERSION;
    uint32_t entry = rd32le(buf + 8);
    uint32_t code_size = rd32le(buf + 12);
    uint32_t data_size = rd32le(buf + 16);
    uint32_t debug_size = rd32le(buf + 24);
    uint64_t total = (uint64_t)CHBC_HEADER_SIZE + code_size + data_size + debug_size;
    if (total != (uint64_t)len)
        return CHBC_E_SIZE;
    img->buf = NULL;   /* not ours, so chbc_free must not free it */
    img->entry = entry;
    img->code_size = code_size;
    img->code = (const chbc_insn *)(buf + CHBC_HEADER_SIZE);
    img->data_size = data_size;
    img->bss_size = rd32le(buf + 20);
    img->debug_size = debug_size;
    img->debug = buf + CHBC_HEADER_SIZE + code_size + data_size;
    img->data = buf + CHBC_HEADER_SIZE + code_size;
    return CHBC_OK;
}

chbc_err chbc_load(const char *path, chbc_image *img)
{
    memset(img, 0, sizeof *img);

    FILE *f = fopen(path, "rb");
    if (!f)
        return CHBC_E_IO;

    if (fseek(f, 0, SEEK_END) != 0) {
        fclose(f);
        return CHBC_E_IO;
    }
    long len = ftell(f);
    rewind(f);
    if (len < CHBC_HEADER_SIZE || (unsigned long)len > CHBC_MAX_FILE) {
        fclose(f);
        return CHBC_E_SIZE;
    }

    uint8_t *buf = malloc((size_t)len);
    if (!buf) {
        fclose(f);
        return CHBC_E_NOMEM;
    }
    if (fread(buf, 1, (size_t)len, f) != (size_t)len) {
        free(buf);
        fclose(f);
        return CHBC_E_IO;
    }
    fclose(f);

    chbc_err e = chbc_load_mem(buf, (size_t)len, img);
    if (e != CHBC_OK) {
        free(buf);
        return e;
    }
    img->buf = buf;   /* now ours: chbc_free releases it */
    return CHBC_OK;
}

void chbc_free(chbc_image *img)
{
    free(img->buf);
    memset(img, 0, sizeof *img);
}

/*
 * Debug section (all little-endian u32):
 *   nfiles, nfuncs, nlines, strsize
 *   files[nfiles]            string offsets
 *   funcs[nfuncs] = {start, size, name}   sorted by start, no overlap
 *   lines[nlines] = {off, file, line}     strictly increasing off, each applies until the next
 *   strtab[strsize]          NUL-terminated strings
 */
typedef struct {
    uint32_t nfiles, nfuncs, nlines, strsize;
    const uint8_t *files, *funcs, *lines, *str;
} dbg_view;

/* Returns 1 with a view, 0 if there is no debug section, -1 if its size is wrong. */
static int dbg_open(const chbc_image *img, dbg_view *v)
{
    const uint8_t *d = img->debug;
    uint32_t n = img->debug_size;
    if (n == 0)
        return 0;
    if (n < 16)
        return -1;
    v->nfiles = rd32le(d);
    v->nfuncs = rd32le(d + 4);
    v->nlines = rd32le(d + 8);
    v->strsize = rd32le(d + 12);
    uint64_t need = 16 + 4 * (uint64_t)v->nfiles + 12 * (uint64_t)v->nfuncs +
                    12 * (uint64_t)v->nlines + v->strsize;
    if (need != n)
        return -1;
    v->files = d + 16;
    v->funcs = v->files + 4 * (size_t)v->nfiles;
    v->lines = v->funcs + 12 * (size_t)v->nfuncs;
    v->str = v->lines + 12 * (size_t)v->nlines;
    return 1;
}

static const char *dbg_str(const dbg_view *v, uint32_t off)
{
    if (off >= v->strsize || !memchr(v->str + off, 0, v->strsize - off))
        return NULL;
    return (const char *)v->str + off;
}

int chbc_lookup(const chbc_image *img, uint32_t off, chbc_loc *out)
{
    dbg_view v;
    int found = 0;
    memset(out, 0, sizeof *out);
    if (dbg_open(img, &v) != 1)
        return 0;

    uint32_t lo = 0, hi = v.nlines;
    while (lo < hi) {
        uint32_t mid = lo + (hi - lo) / 2;
        if (rd32le(v.lines + 12 * (size_t)mid) <= off)
            lo = mid + 1;
        else
            hi = mid;
    }
    if (lo > 0) {
        const uint8_t *e = v.lines + 12 * (size_t)(lo - 1);
        uint32_t file = rd32le(e + 4);
        if (file < v.nfiles)
            out->file = dbg_str(&v, rd32le(v.files + 4 * (size_t)file));
        out->line = rd32le(e + 8);
        out->line_off = rd32le(e);
        found = 1;
    }

    lo = 0;
    hi = v.nfuncs;
    while (lo < hi) {
        uint32_t mid = lo + (hi - lo) / 2;
        if (rd32le(v.funcs + 12 * (size_t)mid) <= off)
            lo = mid + 1;
        else
            hi = mid;
    }
    if (lo > 0) {
        const uint8_t *e = v.funcs + 12 * (size_t)(lo - 1);
        uint32_t start = rd32le(e), size = rd32le(e + 4);
        if ((uint64_t)off < (uint64_t)start + size) {
            out->func = dbg_str(&v, rd32le(e + 8));
            out->func_off = start;
            out->func_size = size;
            found = 1;
        }
    }
    return found;
}

static int verify_debug(const chbc_image *img)
{
    dbg_view v;
    int r = dbg_open(img, &v);
    if (r <= 0)
        return r == 0;
    if (v.strsize && v.str[v.strsize - 1] != 0)
        return 0;

    for (uint32_t i = 0; i < v.nfiles; i++)
        if (rd32le(v.files + 4 * (size_t)i) >= v.strsize)
            return 0;

    uint64_t prev_end = 0;
    for (uint32_t i = 0; i < v.nfuncs; i++) {
        const uint8_t *e = v.funcs + 12 * (size_t)i;
        uint32_t start = rd32le(e), size = rd32le(e + 4);
        if (start % CHBC_INSN_SIZE || size == 0 || start < prev_end ||
            (uint64_t)start + size > img->code_size || rd32le(e + 8) >= v.strsize)
            return 0;
        prev_end = (uint64_t)start + size;
    }

    int64_t prev = -1;
    for (uint32_t i = 0; i < v.nlines; i++) {
        const uint8_t *e = v.lines + 12 * (size_t)i;
        uint32_t off = rd32le(e);
        if (off % CHBC_INSN_SIZE || off >= img->code_size || (int64_t)off <= prev ||
            rd32le(e + 4) >= v.nfiles)
            return 0;
        prev = off;
    }
    return 1;
}

chbc_err chbc_verify(const chbc_image *img, uint32_t *bad_off)
{
    uint32_t dummy;
    if (!bad_off)
        bad_off = &dummy;
    *bad_off = 0;

    uint32_t size = img->code_size;
    if (size == 0)
        return CHBC_E_EMPTY;
    if (size % CHBC_INSN_SIZE)
        return CHBC_E_ALIGN;

    if (img->entry >= size || img->entry % CHBC_INSN_SIZE) {
        *bad_off = img->entry;
        return CHBC_E_ENTRY;
    }

    uint32_t n = size / CHBC_INSN_SIZE;
    for (uint32_t i = 0; i < n; i++) {
        const chbc_insn *in = &img->code[i];
        uint32_t off = i * CHBC_INSN_SIZE;
        *bad_off = off;

        if (in->op >= OP_COUNT)
            return CHBC_E_OPCODE;

        unsigned fmt = chbc_op_fmt[in->op];
        unsigned mask = chbc_fmt_regmask(fmt);
        if (((mask & 1) && in->a >= CHBC_NREGS) ||
            ((mask & 2) && in->b >= CHBC_NREGS) ||
            ((mask & 4) && in->c >= CHBC_NREGS))
            return CHBC_E_REG;

        if (fmt == F_RRRR && (uint32_t)in->imm >= CHBC_NREGS)
            return CHBC_E_REG;

        if (chbc_fmt_is_branch(fmt)) {
            uint32_t t = (uint32_t)in->imm;
            if (t >= size || t % CHBC_INSN_SIZE)
                return CHBC_E_TARGET;
            if (in->op == OP_JTAB) {
                uint64_t count = (uint64_t)in->b | (uint64_t)in->c << 8;
                if ((uint64_t)t + count * CHBC_INSN_SIZE > size)
                    return CHBC_E_TARGET;
            }
        }

        /* A BF*K branch reads the constant in the slot after it, so that slot must exist and be a KDATA. */
        if (chbc_op_has_kdata(in->op)) {
            if (i + 1 >= n || img->code[i + 1].op != OP_KDATA)
                return CHBC_E_TARGET;
        }
    }

    /* Nothing may branch to a KDATA: it is a constant, not an instruction. */
    for (uint32_t i = 0; i < n; i++) {
        const chbc_insn *in = &img->code[i];
        if (!chbc_fmt_is_branch(chbc_op_fmt[in->op]))
            continue;
        uint32_t t = (uint32_t)in->imm / CHBC_INSN_SIZE;
        if (img->code[t].op == OP_KDATA) {
            *bad_off = i * CHBC_INSN_SIZE;
            return CHBC_E_TARGET;
        }
    }

    /* a KDATA in the last slot would let a branch run past the end */
    unsigned last = img->code[n - 1].op;
    if (last != OP_HALT && last != OP_JMP && last != OP_RET && last != OP_EXIT &&
        last != OP_TRAP && last != OP_THROW &&
        last != OP_POPRET && last != OP_POP2RET && last != OP_RETR) {
        *bad_off = (n - 1) * CHBC_INSN_SIZE;
        return CHBC_E_END;
    }

    *bad_off = 0;
    if (!verify_debug(img))
        return CHBC_E_DEBUG;
    return CHBC_OK;
}

const char *chbc_err_str(chbc_err e)
{
    switch (e) {
    case CHBC_OK:        return "ok";
    case CHBC_E_IO:      return "cannot read file";
    case CHBC_E_MAGIC:   return "bad magic (not a chbc file)";
    case CHBC_E_VERSION: return "unsupported version";
    case CHBC_E_SIZE:    return "bad file size";
    case CHBC_E_EMPTY:   return "empty code section";
    case CHBC_E_ALIGN:   return "code size is not a multiple of 8";
    case CHBC_E_OPCODE:  return "invalid opcode";
    case CHBC_E_REG:     return "register number out of range";
    case CHBC_E_TARGET:  return "branch target out of range or misaligned";
    case CHBC_E_ENTRY:   return "entry out of range or misaligned";
    case CHBC_E_END:     return "code must end with HALT, EXIT, TRAP, JMP or RET";
    case CHBC_E_DEBUG:   return "bad debug information";
    case CHBC_E_NOMEM:   return "out of memory";
    }
    return "unknown error";
}
