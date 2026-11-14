; bss is zeroed, follows data aligned to 16, and the stack sits above it
.entry main
.data
d:  .byte 5, 6, 7
.bss
buf:    .zero 100
        .align 16
buf2:   .zero 8
.code
main:
    LI r1, d
    PRINT r1
    LI r1, buf
    PRINT r1
    LI r1, buf2
    PRINT r1
    LD64 r0, [r1]
    PRINT r0
    LI r2, buf
    LD64 r0, [r2+92]
    PRINT r0
    LI r3, 777
    ST64 [r1], r3
    LD64 r0, [r2+112]
    PRINT r0
    LD8 r0, [r2-16]
    PRINT r0
    HALT
