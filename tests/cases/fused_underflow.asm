; a pop pair with only one value above the end of the stack stops with the same fault as two pops
.entry main
main:
    TRY caught
    POP2 r1, r2
    HALT
caught:
    PRINT r1               ; 1: VM_E_STACK_UNDERFLOW
    TRY caught2
    POPRET r1
    HALT
caught2:
    PRINT r1               ; 1
    TRY caught3
    POP2RET r1, r2
    HALT
caught3:
    PRINT r1               ; 1
    TRY caught4
    RETR r5
    HALT
caught4:
    PRINT r1               ; 1
    HALT
