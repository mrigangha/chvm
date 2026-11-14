.entry main
.data
a:  .byte 1
    .align 8
b:  .word 7
c:  .byte 2, 3
    .align 4
d:  .byte 9
    .align 1
e:
.code
main:
    LI r1, a
    PRINT r1
    LI r1, b
    PRINT r1
    LI r1, c
    PRINT r1
    LI r1, d
    PRINT r1
    LI r1, e
    PRINT r1
    LI r1, b
    LD64 r0, [r1]
    PRINT r0
    HALT
