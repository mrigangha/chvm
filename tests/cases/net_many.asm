; 300 connections, one after another. Every accepted fd is closed, so the fd numbers must not keep growing:
; the same small number is handed out each time. A leak would show as a growing maximum
.entry main
.bss
buf: .zero 64
.code
main:
    LI r1, LISTEN_LOCAL
    LI r2, 0
    LI r3, 64
    SYSCALL SYS_LISTEN
    MOV r9, r0
    MOV r1, r9
    SYSCALL SYS_SOCKPORT
    PRINT r0
    LI r12, 0                ; connections served
    LI r13, 0                ; the highest fd number seen
loop:
    MOV r1, r9
    LI r2, 5000
    LI r3, 2000
    SYSCALL SYS_ACCEPT
    BLTI r0, 0, stop
    MOV r10, r0
    BGE r13, r10, keep
    MOV r13, r10
keep:
    MOV r1, r10
    LI r2, buf
    LI r3, 64
    SYSCALL SYS_READ
    LI r4, buf
    LI r5, 111
    ST8 [r4], r5
    LI r5, 107
    ST8 [r4+1], r5
    MOV r1, r10
    LI r2, buf
    LI r3, 2
    SYSCALL SYS_WRITE
    MOV r1, r10
    SYSCALL SYS_CLOSE
    ADDI r12, r12, 1
    BLTI r12, 300, loop
stop:
    PRINT r12                ; 300
    LTI r5, r13, 8
    PRINT r5                 ; 1: the highest fd stayed small (listening fd 3, then one connection at a time)
    HALT
