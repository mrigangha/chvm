#ifndef CHBC_OPCODES_H
#define CHBC_OPCODES_H

/*
 * Operand formats. Every instruction is 8 bytes: op, a, b, c, imm32.
 *
 *   F_NONE  -
 *   F_R     a
 *   F_RR    a, b
 *   F_RRR   a, b, c
 *   F_RI    a, imm
 *   F_RRI   a, b, imm
 *   F_LD    a = mem[b + imm]
 *   F_ST    mem[b + imm] = c
 *   F_J     imm is a code offset
 *   F_RJ    a, imm is a code offset
 *   F_RRJ   a, b, imm is a code offset
 *   F_I     imm only (not a branch target)
 *   F_RIJ   a, value = b | c << 8 (16 bits), imm is a code offset
 *   F_RRRR  a, b, c, and a fourth register number in imm
 *
 * CALLX rd, fn, sig uses F_RRR: a = rd, b = fn, c = sig, and the argument array address is in r1.
 */
enum chbc_fmt {
    F_NONE, F_R, F_RR, F_RRR, F_RI, F_RRI, F_LD, F_ST, F_J, F_RJ, F_RRJ, F_I, F_RIJ, F_RRRR
};

/* X(name, format) */
#define CHBC_OPCODES(X)                                                    \
    X(HALT, F_NONE) X(NOP, F_NONE)                                         \
    X(MOV, F_RR) X(MOVI, F_RI) X(MOVHI, F_RI)                              \
    X(ADD, F_RRR) X(SUB, F_RRR) X(MUL, F_RRR)                              \
    X(DIV, F_RRR) X(MOD, F_RRR) X(DIVU, F_RRR) X(MODU, F_RRR)              \
    X(AND, F_RRR) X(OR, F_RRR) X(XOR, F_RRR)                               \
    X(SHL, F_RRR) X(SHR, F_RRR) X(USHR, F_RRR)                             \
    X(EQ, F_RRR) X(NE, F_RRR) X(LT, F_RRR) X(LE, F_RRR)                    \
    X(LTU, F_RRR) X(LEU, F_RRR)                                            \
    X(ADDI, F_RRI) X(MULI, F_RRI)                                          \
    X(ANDI, F_RRI) X(ORI, F_RRI) X(XORI, F_RRI)                            \
    X(SHLI, F_RRI) X(SHRI, F_RRI) X(USHRI, F_RRI)                          \
    X(EQI, F_RRI) X(NEI, F_RRI) X(LTI, F_RRI) X(LEI, F_RRI)                \
    X(GTI, F_RRI) X(GEI, F_RRI)                                            \
    X(NEG, F_RR) X(NOT, F_RR) X(LNOT, F_RR)                                \
    X(SEXT8, F_RR) X(SEXT16, F_RR) X(SEXT32, F_RR) X(ZEXT32, F_RR)         \
    X(LD8, F_LD) X(LD16, F_LD) X(LD32, F_LD) X(LD64, F_LD)                 \
    X(LD8S, F_LD) X(LD16S, F_LD) X(LD32S, F_LD)                            \
    X(ST8, F_ST) X(ST16, F_ST) X(ST32, F_ST) X(ST64, F_ST)                 \
    X(PUSH, F_R) X(POP, F_R)                                               \
    X(JMP, F_J) X(JZ, F_RJ) X(JNZ, F_RJ)                                   \
    X(BEQ, F_RRJ) X(BNE, F_RRJ) X(BLT, F_RRJ) X(BGE, F_RRJ)                \
    X(BLTU, F_RRJ) X(BGEU, F_RRJ)                                          \
    X(CALL, F_J) X(CALLR, F_R) X(RET, F_NONE)                              \
    X(PRINT, F_R) X(PRINTC, F_R) X(EXIT, F_R)                              \
    X(FADD, F_RRR) X(FSUB, F_RRR) X(FMUL, F_RRR) X(FDIV, F_RRR)            \
    X(FNEG, F_RR) X(FABS, F_RR) X(FSQRT, F_RR)                             \
    X(FEQ, F_RRR) X(FNE, F_RRR) X(FLT, F_RRR) X(FLE, F_RRR)                \
    X(I2F, F_RR) X(U2F, F_RR) X(F2I, F_RR) X(F2U, F_RR) X(FROUND32, F_RR)  \
    X(LDF32, F_LD) X(STF32, F_ST) X(PRINTF, F_R)                           \
    X(SBRK, F_RR) X(SYSCALL, F_I) X(TRAP, F_NONE)                          \
    X(MEMCPY, F_RRR) X(MEMSET, F_RRR) X(MEMCMP, F_RRRR)                    \
    X(BEQI, F_RIJ) X(BNEI, F_RIJ) X(BLTI, F_RIJ) X(BGEI, F_RIJ)            \
    X(BLTUI, F_RIJ) X(BGEUI, F_RIJ) X(JTAB, F_RIJ)                         \
    X(LTUI, F_RRI) X(LEUI, F_RRI) X(GTUI, F_RRI) X(GEUI, F_RRI)            \
    X(ADDI32, F_RRI) X(ADD32, F_RRR) X(SUB32, F_RRR) X(MUL32, F_RRR)       \
    X(DIV32, F_RRR) X(MOD32, F_RRR) X(DIVU32, F_RRR) X(MODU32, F_RRR)      \
    X(SHL32, F_RRR) X(SHR32, F_RRR) X(USHR32, F_RRR)                       \
    X(MULH, F_RRR) X(MULHU, F_RRR) X(SEL, F_RRRR)                          \
    X(CLZ, F_RR) X(CTZ, F_RR) X(POPCNT, F_RR) X(CLZ32, F_RR) X(CTZ32, F_RR) \
    X(ROL, F_RRR) X(ROR, F_RRR) X(ROL32, F_RRR) X(ROR32, F_RRR)            \
    X(BSWAP16, F_RR) X(BSWAP32, F_RR) X(BSWAP64, F_RR)                     \
    X(FADDS, F_RRR) X(FSUBS, F_RRR) X(FMULS, F_RRR) X(FDIVS, F_RRR)        \
    X(FNEGS, F_RR) X(FABSS, F_RR) X(FSQRTS, F_RR)                          \
    X(FEQS, F_RRR) X(FNES, F_RRR) X(FLTS, F_RRR) X(FLES, F_RRR)            \
    X(I2FS, F_RR) X(U2FS, F_RR) X(FS2I, F_RR) X(FS2U, F_RR)                \
    X(FS2D, F_RR) X(D2FS, F_RR) X(PRINTFS, F_R)                            \
    X(CALLX, F_RRR)

enum chbc_op {
#define X(name, fmt) OP_##name,
    CHBC_OPCODES(X)
#undef X
    OP_COUNT
};

#endif
