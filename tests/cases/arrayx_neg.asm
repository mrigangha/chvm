.entry main
.data
arr:   .word 3, 3, elems
elems: .word 10, 20, 30
.code
main:
    LI r1, arr
    LIF r2, -1.0
    LDAX r0, r1, r2
    HALT
