; 5000 processes at once, each waiting for a message. We wake them one at a time and count the answers.
; Spawning is cheap: each process is its own small memory block, made when it starts and freed when it ends
.entry main
.bss
buf: .zero 64
pids: .zero 40000
.code
main:
    LI r12, 0
    LI r13, 5000
    LI r14, pids
spawn:
    LI r1, waiter
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, 0
    SYSCALL SYS_PSPAWN
    BLTI r0, 1, bad
    ST64 [r14], r0
    ADDI r14, r14, 8
    ADDI r12, r12, 1
    BLT r12, r13, spawn
    SYSCALL SYS_PCOUNT
    PRINT r0               ; 5001
    LI r12, 0
    LI r14, pids
ask:
    LD64 r1, [r14]
    LI r2, 1
    LI r3, buf
    LI r4, 8
    SYSCALL SYS_SEND
    BNEI r0, 0, bad
    LI r1, 2
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    BLTI r0, 0, bad
    LI r1, buf
    LI r2, 64
    SYSCALL SYS_MSGTAKE
    ADDI r14, r14, 8
    ADDI r12, r12, 1
    BLT r12, r13, ask
    PRINT r12              ; 5000 answers
    LI r1, 20
    SYSCALL SYS_SLEEP
    SYSCALL SYS_PCOUNT
    PRINT r0               ; 1: all of them ended
    HALT
bad:
    PRINT r0
    PRINT r12
    HALT
waiter:
    LI r1, 1
    LI r2, -1
    SYSCALL SYS_MSGWAIT
    LI r1, buf
    LI r2, 64
    SYSCALL SYS_MSGTAKE
    LI r1, 1
    LI r2, 2
    LI r3, buf
    LI r4, 8
    SYSCALL SYS_SEND
    RET
