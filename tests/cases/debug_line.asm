.entry main
.file "prog.c"
.func main
main:
.line 10
    LI r1, 5
.line 11
    CALL helper
    HALT
.endfunc
.func helper
helper:
.line 3
    LI r2, 0
.line 4
    LI r3, 7
    DIV r0, r3, r2
    RET
.endfunc
