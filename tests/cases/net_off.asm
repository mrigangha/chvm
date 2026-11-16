; every environment and network call is refused without chvm -N
.entry main
.data
name: .asciz "HOME"
.bss
buf: .zero 64
.code
main:
    LI r1, name
    LI r2, buf
    LI r3, 64
    SYSCALL SYS_GETENV
    PRINT r0               ; -1 EPERM
    LI r1, 0
    LI r2, 0
    LI r3, 8
    SYSCALL SYS_LISTEN
    PRINT r0               ; -1
    LI r1, 3
    LI r2, 0
    LI r3, 0
    SYSCALL SYS_ACCEPT
    PRINT r0               ; -1
    LI r1, 3
    LI r2, 1
    LI r3, 0
    SYSCALL SYS_POLL
    PRINT r0               ; -1
    LI r1, 3
    LI r2, 1
    SYSCALL SYS_SHUTDOWN
    PRINT r0               ; -1
    LI r1, 3
    SYSCALL SYS_SOCKPORT
    PRINT r0               ; -1
    HALT
