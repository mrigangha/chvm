; LDAX / STAX / SCHAR / LDI2F on an array header [len][cap][data] and a string [len][bytes]
.entry main
.data
arr:   .word 3, 3, elems
elems: .word 10, 20, 30
str:   .word 5
       .ascii "hello"
       .zero 3
.code
main:
    LI r1, arr
    LIF r2, 1.0
    LDAX r0, r1, r2
    PRINT r0              ; 20
    LIF r2, 2.9
    LDAX r0, r1, r2
    PRINT r0              ; 30 (index is truncated)
    LI r5, 99
    LIF r2, 0.0
    STAX r1, r2, r5
    LD64 r0, [r1+16]
    LD64 r0, [r0]
    PRINT r0              ; 99
    LI r3, str
    LIF r2, 1.0
    SCHAR r0, r3, r2
    PRINTF r0             ; 101 ('e')
    LIF r2, 4.0
    SCHAR r0, r3, r2
    PRINTF r0             ; 111 ('o')
    LI r6, elems
    LDI2F r0, [r6+8]
    PRINTF r0             ; 20 as a double
    LIF r2, -0.0
    LDAX r0, r1, r2
    PRINT r0              ; -0 is index 0 -> 99
    HALT
