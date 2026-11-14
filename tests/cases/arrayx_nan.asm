; NaN truncates to index 0, like a JavaScript array index would not, but it must not crash
.entry main
.data
arr:   .word 3, 3, elems
elems: .word 10, 20, 30
.code
main:
    LI r1, arr
    LIF r2, nan
    LDAX r0, r1, r2
    PRINT r0
    HALT
