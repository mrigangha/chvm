.bss
buf: .zero 64
.code
    LI r1, buf
    LI r2, -9223372036854775808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -9223372036854775808
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, 0
    LI r2, 8192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    PRINT r0
    LI r1, buf
    LI r3, 0
    LIF r2, 1.5
    SYSCALL SYS_FMTNUM
    PRINT r0
    HALT
