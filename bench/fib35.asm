.entry main
fib:
    LTI  r2, r1, 2
    JZ   r2, rec
    MOV  r0, r1
    RET
rec:
    PUSH r1
    ADDI r1, r1, -1
    CALL fib
    POP  r1
    PUSH r0
    ADDI r1, r1, -2
    CALL fib
    POP  r2
    ADD  r0, r0, r2
    RET
main:
    LI   r1, 35
    CALL fib
    PRINT r0
    HALT
