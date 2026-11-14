; the stack must not grow into bss
.entry main
.bss
big: .zero 1000000
.code
f:  CALL f
    RET
main:
    CALL f
    HALT
