.entry main
.data
arr: .word 11, 22, 33
.code
main:
    LI r1, arr+8
    LD64 r0, [r1]
    PRINT r0
    LI r2, 0
    LD64 r0, [r2+arr+16]
    PRINT r0
    LD64 r0, [r2+arr]
    PRINT r0
    LI r3, arr+16
    LD64 r0, [r3-8]
    PRINT r0
    JMP skip+0
    PRINT r0
skip:
    HALT
