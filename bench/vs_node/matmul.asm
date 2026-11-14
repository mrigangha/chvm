; 120 x 120 integer matrix multiply, flat row-major arrays of 8-byte values
.equ N, 120
.entry main
.bss
A: .zero 115200
B: .zero 115200
C: .zero 115200
.code
main:
    LI r1, 0
    LI r10, A
    LI r11, B
init_i:
    LI r2, 0
init_j:
    MULI r3, r1, N
    ADD r3, r3, r2
    SHLI r3, r3, 3
    ADD r4, r1, r2
    ADD r5, r10, r3
    ST64 [r5], r4
    SUB r4, r1, r2
    ADD r5, r11, r3
    ST64 [r5], r4
    ADDI r2, r2, 1
    BLTI r2, N, init_j
    ADDI r1, r1, 1
    BLTI r1, N, init_i
    LI r1, 0
    LI r12, N
    SHLI r12, r12, 3
mul_i:
    LI r2, 0
mul_j:
    MULI r7, r1, N
    SHLI r7, r7, 3
    ADD r7, r7, r10
    SHLI r8, r2, 3
    ADD r8, r8, r11
    LI r6, 0
    LI r13, N
mul_k:
    LD64 r4, [r7]
    LD64 r5, [r8]
    MUL r4, r4, r5
    ADD r6, r6, r4
    ADDI r7, r7, 8
    ADD r8, r8, r12
    ADDI r13, r13, -1
    JNZ r13, mul_k
    MULI r3, r1, N
    ADD r3, r3, r2
    SHLI r3, r3, 3
    ADDI r3, r3, C
    ST64 [r3], r6
    ADDI r2, r2, 1
    BLTI r2, N, mul_j
    ADDI r1, r1, 1
    BLTI r1, N, mul_i
    LI r1, C
    LD64 r0, [r1]
    PRINT r0
    LI r1, 14399
    LI r2, 8
    MUL r1, r1, r2
    ADDI r1, r1, C
    LD64 r0, [r1]
    PRINT r0
    LI r1, 1220
    MULI r1, r1, 8
    ADDI r1, r1, C
    LD64 r0, [r1]
    PRINT r0
    HALT
