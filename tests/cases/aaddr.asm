.entry main
.data
arr:   .word 3, 3, elems
elems: .word 10, 20, 30
.code
main:
    LI r1, arr
    LIF r2, 2.0
    AADDR r3, r1, r2
    LD64 r4, [r3]
    PRINT r4              ; 30
    LI r5, 31
    ST64 [r3], r5
    LIF r2, 2.0
    LDAX r0, r1, r2
    PRINT r0              ; 31
    LIF r2, 3.0
    AADDR r3, r1, r2
    HALT
