#include "vm.h"

#include "foreign.h"
#include "sys.h"

#include <inttypes.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#define LIKELY(x)   __builtin_expect(!!(x), 1)
#define UNLIKELY(x) __builtin_expect(!!(x), 0)

const vm_config vm_default_config = {
    .mem_bytes = 64u << 20,
};

/* Space kept free between the heap break and the stack pointer. */
#define VM_STACK_RESERVE 65536u

/* The loader verifies every opcode, so computed goto needs no bounds check. */
#if defined(__GNUC__) && !defined(CHVM_SWITCH)
#define CHVM_CGOTO 1
#endif

#ifdef CHVM_CGOTO
#define DISPATCH() goto *labels[pc->op]
#define OP(name) L_##name:
#else
#define DISPATCH() goto dispatch
#define OP(name) case OP_##name:
#endif

/* pc points at the current instruction until a handler finishes, so it is the fault site. */
#define NEXT()   \
    do {         \
        pc++;    \
        DISPATCH(); \
    } while (0)

#define FAIL(s)                                                         \
    do {                                                                \
        status = (s);                                                   \
        goto fail;                                                      \
    } while (0)

#define RA (r[pc->a])
#define RB (r[pc->b])
#define RC (r[pc->c])
#define VAL16 ((int64_t)(int16_t)(pc->b | pc->c << 8))
#define UVAL16 ((uint64_t)(pc->b | pc->c << 8))
#define IMM ((int64_t)pc->imm)
#define UIMM ((uint64_t)(int64_t)pc->imm)
#define SP (r[CHBC_REG_SP])
#define TARGET (code + ((uint32_t)pc->imm >> 3))

#define JUMP()           \
    do {                 \
        pc = TARGET;     \
        DISPATCH();      \
    } while (0)
#define BRANCH(cond)     \
    do {                 \
        if (cond)        \
            JUMP();      \
        NEXT();          \
    } while (0)

#define ALU(name, expr)  \
    OP(name)             \
        RA.u = (expr);   \
        NEXT();

#define ALUS(name, expr) \
    OP(name)             \
        RA.i = (expr);   \
        NEXT();

#define LDOP(name, type, field)                         \
    OP(name) {                                          \
        uint64_t ad = RB.u + UIMM;                      \
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - sizeof(type))) \
            FAIL(VM_E_BAD_MEM);                         \
        type v;                                         \
        memcpy(&v, mem + ad, sizeof v);                 \
        RA.field = v;                                   \
        NEXT();                                         \
    }

#define STOP(name, type)                                \
    OP(name) {                                          \
        uint64_t ad = RB.u + UIMM;                      \
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - sizeof(type))) \
            FAIL(VM_E_BAD_MEM);                         \
        type v = (type)RC.u;                            \
        memcpy(mem + ad, &v, sizeof v);                 \
        NEXT();                                         \
    }

#define FALU(name, expr) \
    OP(name)             \
        RA.f = (expr);   \
        NEXT();

static inline float getf(uint64_t u)
{
    uint32_t b = (uint32_t)u;
    float f;
    memcpy(&f, &b, sizeof f);
    return f;
}

static inline uint64_t putf(float f)
{
    uint32_t b;
    memcpy(&b, &f, sizeof b);
    return b;
}

#define FSALU(name, expr) \
    OP(name)              \
        RA.u = putf(expr); \
        NEXT();

/* High 64 bits of the 128-bit product, without needing __int128. */
static uint64_t mulhu64(uint64_t a, uint64_t b)
{
    uint64_t a0 = (uint32_t)a, a1 = a >> 32, b0 = (uint32_t)b, b1 = b >> 32;
    uint64_t p00 = a0 * b0, p01 = a0 * b1, p10 = a1 * b0, p11 = a1 * b1;
    uint64_t mid = (p00 >> 32) + (uint32_t)p01 + (uint32_t)p10;
    return p11 + (p01 >> 32) + (p10 >> 32) + (mid >> 32);
}

static inline uint32_t rol32(uint32_t x, uint64_t n)
{
    unsigned k = (unsigned)(n & 31);
    return (x << k) | (x >> ((32 - k) & 31));
}

static inline uint32_t ror32(uint32_t x, uint64_t n)
{
    unsigned k = (unsigned)(n & 31);
    return (x >> k) | (x << ((32 - k) & 31));
}

static inline int mem_ok(uint64_t addr, uint64_t n, uint64_t mem_size)
{
    return addr >= CHBC_NULL_PAGE && addr <= mem_size && n <= mem_size - addr;
}

/* Float to integer conversions saturate, and NaN becomes 0, so they never trap. */
static int64_t f2i(double d)
{
    if (d != d)
        return 0;
    if (d >= 9223372036854775808.0)
        return INT64_MAX;
    if (d <= -9223372036854775808.0)
        return INT64_MIN;
    return (int64_t)d;
}

static uint64_t f2u(double d)
{
    if (!(d > 0))
        return 0;
    if (d >= 18446744073709551616.0)
        return UINT64_MAX;
    return (uint64_t)d;
}

/* Shortest of %.6g to %.9g that reads back as the same float. NaN prints as "nan". */
static void print_float(float f)
{
    char b[40];
    if (f != f) {
        puts("nan");
        return;
    }
    for (int p = 6; p <= 9; p++) {
        snprintf(b, sizeof b, "%.*g", p, (double)f);
        if (strtof(b, NULL) == f)
            break;
    }
    puts(b);
}

/* Shortest of %.15g, %.16g, %.17g that reads back as the same double. NaN prints as "nan". */
static void print_double(double d)
{
    char b[40];
    if (d != d) {
        puts("nan");
        return;
    }
    for (int p = 15; p <= 17; p++) {
        snprintf(b, sizeof b, "%.*g", p, d);
        if (strtod(b, NULL) == d)
            break;
    }
    puts(b);
}

vm_status vm_run(const chbc_image *img, const vm_config *cfg,
                 uint32_t *fault_off, int64_t *exit_code)
{
    vm_config c = cfg ? *cfg : vm_default_config;
    vm_status status = VM_OK;
    int64_t code_out = 0;

    uint64_t heap_base = ((uint64_t)CHBC_DATA_BASE + img->data_size + img->bss_size + 15) & ~(uint64_t)15;
    if (c.mem_bytes > (1ull << 40) || heap_base + VM_STACK_RESERVE > c.mem_bytes)
        return VM_E_MEM_TOO_SMALL;

    uint8_t *mem = calloc(c.mem_bytes, 1);
    if (!mem)
        return VM_E_NOMEM;
    if (img->data_size)
        memcpy(mem + CHBC_DATA_BASE, img->data, img->data_size);

    const chbc_insn *const code = img->code;
    const uint64_t code_size = img->code_size;
    const uint64_t mem_size = c.mem_bytes;
    const uint64_t mem_limit = mem_size - CHBC_NULL_PAGE;
    uint64_t brk = heap_base;
    vm_foreign *foreign = NULL;
    if (c.allow_foreign) {
        foreign = foreign_new();
        if (!foreign) {
            free(mem);
            return foreign_compiled() ? VM_E_NOMEM : VM_E_FOREIGN_OFF;
        }
    }
    const vm_sysenv env = {mem, mem_size, c.argc, c.argv, foreign};

    vm_value r[CHBC_NREGS];
    memset(r, 0, sizeof r);
    r[CHBC_REG_SP].u = mem_size;
    r[CHBC_REG_FP].u = mem_size;

    const chbc_insn *pc = code + img->entry / CHBC_INSN_SIZE;

#ifdef CHVM_CGOTO
    static const void *const labels[OP_COUNT] = {
#define X(name, fmt) &&L_##name,
        CHBC_OPCODES(X)
#undef X
    };
    DISPATCH();
#else
dispatch:
    switch (pc->op) {
#endif
    OP(HALT)
        goto done;
    OP(NOP)
        NEXT();

    OP(MOV)
        RA = RB;
        NEXT();
    ALUS(MOVI, IMM)
    ALU(MOVHI, ((uint64_t)(uint32_t)pc->imm << 32) | (RA.u & 0xffffffffu))

    ALU(ADD, RB.u + RC.u)
    ALU(SUB, RB.u - RC.u)
    ALU(MUL, RB.u * RC.u)
    OP(DIV)
        if (UNLIKELY(RC.i == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.i = RC.i == -1 ? (int64_t)(0 - RB.u) : RB.i / RC.i;
        NEXT();
    OP(MOD)
        if (UNLIKELY(RC.i == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.i = RC.i == -1 ? 0 : RB.i % RC.i;
        NEXT();
    OP(DIVU)
        if (UNLIKELY(RC.u == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.u = RB.u / RC.u;
        NEXT();
    OP(MODU)
        if (UNLIKELY(RC.u == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.u = RB.u % RC.u;
        NEXT();

    ALU(AND, RB.u & RC.u)
    ALU(OR, RB.u | RC.u)
    ALU(XOR, RB.u ^ RC.u)
    ALU(SHL, RB.u << (RC.u & 63))
    ALUS(SHR, RB.i >> (RC.u & 63))
    ALU(USHR, RB.u >> (RC.u & 63))

    ALUS(EQ, RB.i == RC.i)
    ALUS(NE, RB.i != RC.i)
    ALUS(LT, RB.i < RC.i)
    ALUS(LE, RB.i <= RC.i)
    ALUS(LTU, RB.u < RC.u)
    ALUS(LEU, RB.u <= RC.u)

    ALU(ADDI, RB.u + UIMM)
    ALU(MULI, RB.u * UIMM)
    ALU(ANDI, RB.u & UIMM)
    ALU(ORI, RB.u | UIMM)
    ALU(XORI, RB.u ^ UIMM)
    ALU(SHLI, RB.u << (UIMM & 63))
    ALUS(SHRI, RB.i >> (UIMM & 63))
    ALU(USHRI, RB.u >> (UIMM & 63))
    ALUS(EQI, RB.i == IMM)
    ALUS(NEI, RB.i != IMM)
    ALUS(LTI, RB.i < IMM)
    ALUS(LEI, RB.i <= IMM)
    ALUS(GTI, RB.i > IMM)
    ALUS(GEI, RB.i >= IMM)

    ALU(NEG, 0 - RB.u)
    ALU(NOT, ~RB.u)
    ALUS(LNOT, RB.u == 0)
    ALUS(SEXT8, (int8_t)RB.u)
    ALUS(SEXT16, (int16_t)RB.u)
    ALUS(SEXT32, (int32_t)RB.u)
    ALU(ZEXT32, (uint32_t)RB.u)

    LDOP(LD8, uint8_t, u)
    LDOP(LD16, uint16_t, u)
    LDOP(LD32, uint32_t, u)
    LDOP(LD64, uint64_t, u)
    LDOP(LD8S, int8_t, i)
    LDOP(LD16S, int16_t, i)
    LDOP(LD32S, int32_t, i)
    STOP(ST8, uint8_t)
    STOP(ST16, uint16_t)
    STOP(ST32, uint32_t)
    STOP(ST64, uint64_t)

    OP(PUSH) {
        uint64_t v = RA.u;
        uint64_t nsp = SP.u - 8;
        if (UNLIKELY(nsp < brk || nsp > mem_size - 8))
            FAIL(VM_E_STACK_OVERFLOW);
        memcpy(mem + nsp, &v, 8);
        SP.u = nsp;
        NEXT();
    }
    OP(POP) {
        uint64_t sp = SP.u;
        uint64_t v;
        if (UNLIKELY(sp - CHBC_NULL_PAGE > mem_limit - 8))
            FAIL(VM_E_STACK_UNDERFLOW);
        memcpy(&v, mem + sp, 8);
        SP.u = sp + 8;
        RA.u = v;
        NEXT();
    }

    OP(JMP)
        JUMP();
    OP(JZ)
        BRANCH(RA.u == 0);
    OP(JNZ)
        BRANCH(RA.u != 0);
    OP(BEQ)
        BRANCH(RA.u == RB.u);
    OP(BNE)
        BRANCH(RA.u != RB.u);
    OP(BLT)
        BRANCH(RA.i < RB.i);
    OP(BGE)
        BRANCH(RA.i >= RB.i);
    OP(BLTU)
        BRANCH(RA.u < RB.u);
    OP(BGEU)
        BRANCH(RA.u >= RB.u);

    OP(CALL) {
        uint64_t nsp = SP.u - 8;
        if (UNLIKELY(nsp < brk || nsp > mem_size - 8))
            FAIL(VM_E_STACK_OVERFLOW);
        uint64_t ra = (uint64_t)(pc + 1 - code) * CHBC_INSN_SIZE;
        memcpy(mem + nsp, &ra, 8);
        SP.u = nsp;
        JUMP();
    }
    OP(CALLR) {
        uint64_t t = RA.u;
        if (UNLIKELY(t >= code_size || (t & 7)))
            FAIL(VM_E_BAD_JUMP);
        uint64_t nsp = SP.u - 8;
        if (UNLIKELY(nsp < brk || nsp > mem_size - 8))
            FAIL(VM_E_STACK_OVERFLOW);
        uint64_t ra = (uint64_t)(pc + 1 - code) * CHBC_INSN_SIZE;
        memcpy(mem + nsp, &ra, 8);
        SP.u = nsp;
        pc = code + (t >> 3);
        DISPATCH();
    }
    OP(RET) {
        uint64_t sp = SP.u;
        uint64_t ra;
        if (UNLIKELY(sp - CHBC_NULL_PAGE > mem_limit - 8))
            FAIL(VM_E_STACK_UNDERFLOW);
        memcpy(&ra, mem + sp, 8);
        if (UNLIKELY(ra >= code_size || (ra & 7)))
            FAIL(VM_E_BAD_JUMP);
        SP.u = sp + 8;
        pc = code + (ra >> 3);
        DISPATCH();
    }

    OP(PRINT)
        printf("%" PRId64 "\n", RA.i);
        NEXT();
    OP(PRINTC)
        putchar((int)(RA.u & 0xff));
        NEXT();
    OP(EXIT)
        code_out = RA.i;
        goto done;

    OP(SBRK) {
        int64_t d = RB.i;
        uint64_t old = brk, nb;
        if (d >= 0) {
            uint64_t sp = SP.u;
            uint64_t top = sp > VM_STACK_RESERVE ? sp - VM_STACK_RESERVE : 0;
            if ((uint64_t)d > top || old > top - (uint64_t)d) {
                RA.i = -1;
                NEXT();
            }
            nb = old + (uint64_t)d;
            memset(mem + old, 0, (size_t)(nb - old));
        } else {
            uint64_t dec = 0 - (uint64_t)d;
            if (dec > old - heap_base) {
                RA.i = -1;
                NEXT();
            }
            nb = old - dec;
        }
        brk = nb;
        RA.u = old;
        NEXT();
    }
    OP(SYSCALL)
        r[0].i = vm_syscall(&env, (uint32_t)pc->imm, &r[1]);
        NEXT();
    OP(TRAP)
        FAIL(VM_E_TRAP);

    OP(MEMCPY) {
        uint64_t d = RA.u, sr = RB.u, n = RC.u;
        if (n) {
            if (UNLIKELY(!mem_ok(d, n, mem_size) || !mem_ok(sr, n, mem_size)))
                FAIL(VM_E_BAD_MEM);
            memmove(mem + d, mem + sr, (size_t)n);
        }
        NEXT();
    }
    OP(MEMSET) {
        uint64_t d = RA.u, n = RC.u;
        if (n) {
            if (UNLIKELY(!mem_ok(d, n, mem_size)))
                FAIL(VM_E_BAD_MEM);
            memset(mem + d, (int)(RB.u & 0xff), (size_t)n);
        }
        NEXT();
    }
    OP(MEMCMP) {
        uint64_t p = RB.u, q = RC.u, n = r[(uint32_t)pc->imm].u;
        int res = 0;
        if (n) {
            if (UNLIKELY(!mem_ok(p, n, mem_size) || !mem_ok(q, n, mem_size)))
                FAIL(VM_E_BAD_MEM);
            res = memcmp(mem + p, mem + q, (size_t)n);
        }
        RA.i = (res > 0) - (res < 0);
        NEXT();
    }

    OP(BEQI)
        BRANCH(RA.i == VAL16);
    OP(BNEI)
        BRANCH(RA.i != VAL16);
    OP(BLTI)
        BRANCH(RA.i < VAL16);
    OP(BGEI)
        BRANCH(RA.i >= VAL16);
    OP(BLTUI)
        BRANCH(RA.u < (uint64_t)VAL16);
    OP(BGEUI)
        BRANCH(RA.u >= (uint64_t)VAL16);
    OP(JTAB) {
        uint64_t i = RA.u;
        if (i < UVAL16) {
            pc = code + ((uint32_t)pc->imm >> 3) + i;
            DISPATCH();
        }
        NEXT();
    }

    ALUS(LTUI, RB.u < UIMM)
    ALUS(LEUI, RB.u <= UIMM)
    ALUS(GTUI, RB.u > UIMM)
    ALUS(GEUI, RB.u >= UIMM)

    ALUS(ADDI32, (int32_t)((uint32_t)RB.u + (uint32_t)pc->imm))
    ALUS(ADD32, (int32_t)((uint32_t)RB.u + (uint32_t)RC.u))
    ALUS(SUB32, (int32_t)((uint32_t)RB.u - (uint32_t)RC.u))
    ALUS(MUL32, (int32_t)((uint32_t)RB.u * (uint32_t)RC.u))
    OP(DIV32) {
        int32_t a = (int32_t)RB.u, b = (int32_t)RC.u;
        if (UNLIKELY(b == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.i = b == -1 ? (int32_t)(0 - (uint32_t)a) : a / b;
        NEXT();
    }
    OP(MOD32) {
        int32_t a = (int32_t)RB.u, b = (int32_t)RC.u;
        if (UNLIKELY(b == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.i = b == -1 ? 0 : a % b;
        NEXT();
    }
    OP(DIVU32) {
        uint32_t b = (uint32_t)RC.u;
        if (UNLIKELY(b == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.u = (uint32_t)RB.u / b;
        NEXT();
    }
    OP(MODU32) {
        uint32_t b = (uint32_t)RC.u;
        if (UNLIKELY(b == 0))
            FAIL(VM_E_DIV_ZERO);
        RA.u = (uint32_t)RB.u % b;
        NEXT();
    }
    ALUS(SHL32, (int32_t)((uint32_t)RB.u << (RC.u & 31)))
    ALUS(SHR32, (int32_t)RB.u >> (RC.u & 31))
    ALU(USHR32, (uint32_t)RB.u >> (RC.u & 31))

    ALU(MULHU, mulhu64(RB.u, RC.u))
    ALU(MULH, mulhu64(RB.u, RC.u) - (RB.i < 0 ? RC.u : 0) - (RC.i < 0 ? RB.u : 0))
    OP(SEL)
        RA = RB.u ? RC : r[(uint32_t)pc->imm];
        NEXT();

    ALU(CLZ, RB.u ? (uint64_t)__builtin_clzll(RB.u) : 64)
    ALU(CTZ, RB.u ? (uint64_t)__builtin_ctzll(RB.u) : 64)
    ALU(POPCNT, (uint64_t)__builtin_popcountll(RB.u))
    ALU(CLZ32, (uint32_t)RB.u ? (uint64_t)__builtin_clz((uint32_t)RB.u) : 32)
    ALU(CTZ32, (uint32_t)RB.u ? (uint64_t)__builtin_ctz((uint32_t)RB.u) : 32)
    ALU(ROL, (RB.u << (RC.u & 63)) | (RB.u >> (-RC.u & 63)))
    ALU(ROR, (RB.u >> (RC.u & 63)) | (RB.u << (-RC.u & 63)))
    ALU(ROL32, rol32((uint32_t)RB.u, RC.u))
    ALU(ROR32, ror32((uint32_t)RB.u, RC.u))
    ALU(BSWAP16, __builtin_bswap16((uint16_t)RB.u))
    ALU(BSWAP32, __builtin_bswap32((uint32_t)RB.u))
    ALU(BSWAP64, __builtin_bswap64(RB.u))

    FSALU(FADDS, getf(RB.u) + getf(RC.u))
    FSALU(FSUBS, getf(RB.u) - getf(RC.u))
    FSALU(FMULS, getf(RB.u) * getf(RC.u))
    FSALU(FDIVS, getf(RB.u) / getf(RC.u))
    ALU(FNEGS, (uint32_t)RB.u ^ 0x80000000u)
    ALU(FABSS, (uint32_t)RB.u & 0x7fffffffu)
    FSALU(FSQRTS, __builtin_sqrtf(getf(RB.u)))
    ALUS(FEQS, getf(RB.u) == getf(RC.u))
    ALUS(FNES, getf(RB.u) != getf(RC.u))
    ALUS(FLTS, getf(RB.u) < getf(RC.u))
    ALUS(FLES, getf(RB.u) <= getf(RC.u))
    FSALU(I2FS, (float)RB.i)
    FSALU(U2FS, (float)RB.u)
    ALUS(FS2I, f2i((double)getf(RB.u)))
    ALU(FS2U, f2u((double)getf(RB.u)))
    FALU(FS2D, (double)getf(RB.u))
    FSALU(D2FS, (float)RB.f)
    OP(PRINTFS)
        print_float(getf(RA.u));
        NEXT();

    OP(CALLX) {
        if (UNLIKELY(!foreign))
            FAIL(VM_E_FOREIGN_OFF);
        uint64_t res = 0;
        switch (foreign_call(foreign, RB.u, RC.u, r[1].u, mem, mem_size, &res)) {
        case FOREIGN_OK:
            RA.u = res;
            NEXT();
        case FOREIGN_E_FN:
            FAIL(VM_E_FOREIGN_FN);
        case FOREIGN_E_SIG:
            FAIL(VM_E_FOREIGN_SIG);
        case FOREIGN_E_PTR:
            FAIL(VM_E_FOREIGN_PTR);
        default:
            FAIL(VM_E_FOREIGN_RET);
        }
    }

    FALU(FMOD, fmod(RB.f, RC.f))
    FALU(FFLOOR, floor(RB.f))
    FALU(FCEIL, ceil(RB.f))
    FALU(FTRUNC, trunc(RB.f))

    FALU(FADD, RB.f + RC.f)
    FALU(FSUB, RB.f - RC.f)
    FALU(FMUL, RB.f * RC.f)
    FALU(FDIV, RB.f / RC.f)
    FALU(FNEG, -RB.f)
    FALU(FABS, __builtin_fabs(RB.f))
    FALU(FSQRT, __builtin_sqrt(RB.f))
    ALUS(FEQ, RB.f == RC.f)
    ALUS(FNE, RB.f != RC.f)
    ALUS(FLT, RB.f < RC.f)
    ALUS(FLE, RB.f <= RC.f)
    FALU(I2F, (double)RB.i)
    FALU(U2F, (double)RB.u)
    ALUS(F2I, f2i(RB.f))
    ALU(F2U, f2u(RB.f))
    FALU(FROUND32, (double)(float)RB.f)
    LDOP(LDF32, float, f)
    OP(STF32) {
        uint64_t ad = RB.u + UIMM;
        if (UNLIKELY(ad - CHBC_NULL_PAGE > mem_limit - sizeof(float)))
            FAIL(VM_E_BAD_MEM);
        float v = (float)RC.f;
        memcpy(mem + ad, &v, sizeof v);
        NEXT();
    }
    OP(PRINTF)
        print_double(RA.f);
        NEXT();

#ifndef CHVM_CGOTO
    default:
        abort();
    }
#endif

fail:
    if (fault_off)
        *fault_off = (uint32_t)((uint64_t)(pc - code) * CHBC_INSN_SIZE);
done:
    fflush(stdout);
    foreign_free(foreign);
    free(mem);
    if (exit_code)
        *exit_code = code_out;
    return status;
}

const char *vm_status_str(vm_status s)
{
    switch (s) {
    case VM_OK:                 return "ok";
    case VM_E_STACK_UNDERFLOW:  return "stack underflow";
    case VM_E_STACK_OVERFLOW:   return "stack overflow";
    case VM_E_DIV_ZERO:         return "division by zero";
    case VM_E_BAD_MEM:          return "memory access out of range";
    case VM_E_BAD_JUMP:         return "return or call target is not valid code";
    case VM_E_NOMEM:            return "out of memory";
    case VM_E_MEM_TOO_SMALL:    return "memory too small for data, bss and stack";
    case VM_E_TRAP:             return "trap";
    case VM_E_FOREIGN_OFF:      return "foreign calls are not enabled (run chvm with -F)";
    case VM_E_FOREIGN_FN:       return "foreign call: unknown, closed or forged function id";
    case VM_E_FOREIGN_SIG:      return "foreign call: bad signature";
    case VM_E_FOREIGN_PTR:      return "foreign call: bad pointer, string or argument array";
    case VM_E_FOREIGN_RET:      return "foreign call returned a pointer outside guest memory (use type l for a native handle)";
    }
    return "unknown error";
}
