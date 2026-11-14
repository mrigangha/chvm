; a local variable with an address: x lives in the stack frame, inc(&x) changes it
.entry main
inc:
    LD64 r2, [r1]
    ADDI r2, r2, 1
    ST64 [r1], r2
    RET
main:
    ADDI sp, sp, -16    ; frame: x at [sp+0], arr at [sp+8]
    LI   r1, 41
    ST64 [sp+0], r1
    MOV  r1, sp         ; r1 = &x
    CALL inc
    LD64 r2, [sp+0]
    PRINT r2
    ADDI sp, sp, 16
    HALT
