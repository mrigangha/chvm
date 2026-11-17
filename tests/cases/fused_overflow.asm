; PUSH2 with no room for two values is a stack overflow, and the stack pointer is left alone
.entry main
main:
    TRY caught
loop:
    PUSH2 r1, r2
    JMP loop
caught:
    PRINT r1               ; 2: VM_E_STACK_OVERFLOW
    HALT
