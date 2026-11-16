; a process that loops for ever does not starve the others: the scheduler takes the CPU back
.entry main
.bss
buf: .zero 64
.code
main:
    LI r1, spinner
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, 0
    SYSCALL SYS_PSPAWN
    MOV r9, r0
    LI r1, spinner
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, 0
    SYSCALL SYS_PSPAWN
    MOV r10, r0
    ; two processes spin. This one still gets to sleep, wake up on time, and talk
    LI r1, 100
    SYSCALL SYS_SLEEP
    LI r5, 1
    PRINT r5               ; 1: we woke up while two others were spinning
    SYSCALL SYS_PCOUNT
    PRINT r0               ; 3
    MOV r1, r9
    SYSCALL SYS_PKILL
    MOV r1, r10
    SYSCALL SYS_PKILL
    SYSCALL SYS_PCOUNT
    PRINT r0               ; 1
    ; a loop with no calls and no sleeps, in a child, while we wait on a message with a timeout
    LI r1, counter
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, 0
    SYSCALL SYS_PSPAWN
    LI r1, 7
    LI r2, 5000
    SYSCALL SYS_MSGWAIT
    PRINT r0               ; 8: the child counted to the end and told us, though it never yielded
    LI r1, buf
    LI r2, 64
    SYSCALL SYS_MSGTAKE
    HALT
spinner:
    JMP spinner
counter:
    LI r4, 0
    LI r5, 3000000
c1:
    ADDI r4, r4, 1
    BLT r4, r5, c1
    LI r6, buf
    ST64 [r6], r4
    LI r1, 1
    LI r2, 7
    LI r3, buf
    LI r4, 8
    SYSCALL SYS_SEND
    RET
