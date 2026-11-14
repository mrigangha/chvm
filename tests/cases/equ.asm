.equ SIZE, 8
.equ DOUBLE, 16
.equ CH, 'A'
.equ BIG, 0x123456789
.entry main
main:
    LI r1, SIZE
    PRINT r1
    LI r1, SIZE+4
    PRINT r1
    LI r1, DOUBLE-1
    PRINT r1
    ADDI r1, r1, SIZE
    PRINT r1
    LI r1, CH
    PRINTC r1
    LI r1, BIG
    PRINT r1
    LI r2, 8192
    ST64 [r2+SIZE], r2
    LD64 r3, [r2+8]
    PRINT r3
    LTI r4, r2, DOUBLE
    PRINT r4
    HALT
