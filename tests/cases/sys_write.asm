.entry main
.data
msg: .ascii "hello\nworld\n"
.code
main:
    LI r1, FD_STDOUT
    LI r2, msg
    LI r3, 12
    SYSCALL SYS_WRITE
    PRINT r0             ; 12
    LI r3, 0
    SYSCALL SYS_WRITE
    PRINT r0             ; 0
    LI r1, 77
    LI r3, 5
    SYSCALL SYS_WRITE
    PRINT r0             ; -9 EBADF
    LI r1, FD_STDOUT
    LI r2, 0
    LI r3, 5
    SYSCALL SYS_WRITE
    PRINT r0             ; -14 EFAULT (null)
    LI r2, 0x7fffffff
    SYSCALL SYS_WRITE
    PRINT r0             ; -14 EFAULT (out of memory)
    LI r2, msg
    LI r3, -1
    SYSCALL SYS_WRITE
    PRINT r0             ; -14 EFAULT (huge length)
    SYSCALL 999
    PRINT r0             ; -38 ENOSYS
    HALT
