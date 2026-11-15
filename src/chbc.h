#ifndef CHBC_H
#define CHBC_H

#include <stdint.h>
#include <string.h>

#include "opcodes.h"

#if !defined(__BYTE_ORDER__) || __BYTE_ORDER__ != __ORDER_LITTLE_ENDIAN__
#error "chvm supports little-endian hosts only"
#endif

#define CHBC_VERSION     4
#define CHBC_HEADER_SIZE 32
#define CHBC_INSN_SIZE   8
/* r0..r31. Instructions already carry a full byte per register, so programs that use only r0..r15 are unchanged. */
#define CHBC_NREGS       32
#define CHBC_REG_FP      14
#define CHBC_REG_SP      15
#define CHBC_MAX_FILE    (256u << 20)

/* Addresses below CHBC_NULL_PAGE always fault, so 0 is a usable NULL. Data starts right after. */
#define CHBC_NULL_PAGE   4096u
#define CHBC_DATA_BASE   CHBC_NULL_PAGE

typedef struct {
    uint8_t op, a, b, c;
    int32_t imm;
} chbc_insn;

_Static_assert(sizeof(chbc_insn) == CHBC_INSN_SIZE, "instruction must be 8 bytes");
_Static_assert(OP_COUNT <= 256, "opcode must fit in one byte");

typedef struct {
    uint8_t *buf;
    const chbc_insn *code;
    uint32_t code_size;
    const uint8_t *data;
    uint32_t data_size;
    uint32_t bss_size;
    const uint8_t *debug;
    uint32_t debug_size;
    uint32_t entry;
} chbc_image;

/* Source location of a code offset, from the debug section. Any field may be empty. */
typedef struct {
    const char *file;
    uint32_t line;
    const char *func;
    uint32_t line_off;   /* code offset where this line entry starts */
    uint32_t func_off;
    uint32_t func_size;
} chbc_loc;

typedef enum {
    CHBC_OK = 0,
    CHBC_E_IO,
    CHBC_E_MAGIC,
    CHBC_E_VERSION,
    CHBC_E_SIZE,
    CHBC_E_EMPTY,
    CHBC_E_ALIGN,
    CHBC_E_OPCODE,
    CHBC_E_REG,
    CHBC_E_TARGET,
    CHBC_E_ENTRY,
    CHBC_E_END,
    CHBC_E_DEBUG,
    CHBC_E_NOMEM
} chbc_err;

extern const char *const chbc_op_name[OP_COUNT];
extern const uint8_t chbc_op_fmt[OP_COUNT];

/* Bit 0: a is a register, bit 1: b, bit 2: c. */
static inline unsigned chbc_fmt_regmask(unsigned fmt)
{
    switch (fmt) {
    case F_R: case F_RI: case F_RJ: case F_RIJ:      return 1;
    case F_RR: case F_RRI: case F_LD: case F_RRJ:    return 3;
    case F_RRR: case F_RRRR:                         return 7;
    case F_ST:                                       return 6;
    default:                                         return 0;
    }
}

/* The branches that read a 32-bit constant from the KDATA slot after them. */
static inline int chbc_op_has_kdata(unsigned op)
{
    return (op >= OP_BFLTK && op <= OP_BFNEK) || (op >= OP_INCBLTK && op <= OP_DECBGEK);
}

static inline int chbc_fmt_is_branch(unsigned fmt)
{
    return fmt == F_J || fmt == F_RJ || fmt == F_RRJ || fmt == F_RIJ;
}

chbc_err chbc_load(const char *path, chbc_image *img);
/* Reads an image already in memory (for example one compiled into the program). The bytes are not copied or freed. */
chbc_err chbc_load_mem(const uint8_t *buf, size_t len, chbc_image *img);
void chbc_free(chbc_image *img);
chbc_err chbc_verify(const chbc_image *img, uint32_t *bad_off);
const char *chbc_err_str(chbc_err e);

/*
 * Finds the line and function that contain code offset `off`. Returns 1 if
 * anything was found, else 0. Safe on unverified files: it never reads out of range.
 */
int chbc_lookup(const chbc_image *img, uint32_t off, chbc_loc *out);

#endif
