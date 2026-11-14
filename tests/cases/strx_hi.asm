.entry main
.data
str:   .word 2
       .ascii "ab"
       .zero 6
.code
main:
    LI r3, str
    LIF r2, 2.0
    SCHAR r0, r3, r2
    HALT
