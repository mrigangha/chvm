; more than 262144 nested TRYs is a catchable stack overflow, not a crash and not unbounded memory
.entry main
.code
main:
    LI r9, 0
open:
    TRY caught
    ADDI r9, r9, 1
    JMP open
caught:
    PRINT r1               ; 2: VM_E_STACK_OVERFLOW
    SYSCALL SYS_TIME       ; still running
    HALT
