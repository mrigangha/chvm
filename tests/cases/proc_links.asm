; links: a crash travels along links and ends the processes that do not trap exits. A process that traps
; exits gets a message instead, which is how a supervisor learns about its children
.entry main
.bss
buf: .zero 256
.code
main:
    ; 1. we trap exits. A linked child crashes. We get a message (tag -2) and live
    LI r1, 1
    SYSCALL SYS_TRAPEXIT
    PRINT r0               ; 0: the old setting
    LI r1, crasher
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, SPAWN_LINK
    SYSCALL SYS_PSPAWN
    LI r1, TAG_ANY
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    SYSCALL SYS_MSGTAG
    PRINT r0               ; -2
    LI r1, buf
    LI r2, 256
    SYSCALL SYS_MSGTAKE
    ; 2. a chain: A links to B, B links to C. C crashes. B and A, which do not trap, die too.
    ; We monitor A, and see that it ended abnormally
    LI r1, chain_a
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, SPAWN_MONITOR
    SYSCALL SYS_PSPAWN
    LI r1, TAG_ANY
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    LI r1, buf
    LI r2, 256
    SYSCALL SYS_MSGTAKE
    LI r4, buf
    LD8 r5, [r4]
    ADDI r5, r5, -48
    PRINT r5               ; 4: A was killed because a process linked to it ended
    LI r1, 50
    SYSCALL SYS_SLEEP
    SYSCALL SYS_PCOUNT
    PRINT r0               ; 1: A, B and C are all gone
    ; 3. a normal exit does not take the linked process with it
    LI r1, polite
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, SPAWN_LINK
    SYSCALL SYS_PSPAWN
    MOV r9, r0
    LI r1, TAG_ANY
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    LI r1, buf
    LI r2, 256
    SYSCALL SYS_MSGTAKE
    LI r4, buf
    LD8 r5, [r4]
    ADDI r5, r5, -48
    PRINT r5               ; 0: told, as we trap exits
    ; 4. unlinking: a child we unlinked from crashes and we hear nothing
    LI r1, late_crasher
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, SPAWN_LINK
    SYSCALL SYS_PSPAWN
    MOV r1, r0
    SYSCALL SYS_PUNLINK
    PRINT r0               ; 0
    LI r1, TAG_ANY
    LI r2, 300
    SYSCALL SYS_MSGWAIT
    PRINT r0               ; -110: nothing came
    ; 5. we stop trapping. A linked child crashes. Now it takes us down too, and the machine reports it
    LI r1, 0
    SYSCALL SYS_TRAPEXIT
    PRINT r0               ; 1
    LI r1, crasher
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, SPAWN_LINK
    SYSCALL SYS_PSPAWN
    LI r1, 2000
    SYSCALL SYS_SLEEP
    LI r5, 999
    PRINT r5               ; not reached
    HALT

crasher:
    LI r2, 1
    LI r3, 0
    DIV r4, r2, r3
    RET
chain_a:
    LI r1, chain_b
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, SPAWN_LINK
    SYSCALL SYS_PSPAWN
    LI r1, 5000
    SYSCALL SYS_SLEEP
    RET
chain_b:
    LI r1, chain_c
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, SPAWN_LINK
    SYSCALL SYS_PSPAWN
    LI r1, 5000
    SYSCALL SYS_SLEEP
    RET
chain_c:
    LI r1, 30
    SYSCALL SYS_SLEEP
    LI r2, 1
    LI r3, 0
    DIV r4, r2, r3
    RET
polite:
    RET
late_crasher:
    LI r1, 80
    SYSCALL SYS_SLEEP
    LI r2, 1
    LI r3, 0
    DIV r4, r2, r3
    RET
