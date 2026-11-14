.entry main
.bss
buf: .zero 64
.code
main:
    SYSCALL SYS_ARGC
    PRINT r0             ; 3: path, hello, world
    LI r1, 1
    LI r2, buf
    LI r3, 64
    SYSCALL SYS_ARGV
    PRINT r0             ; 5
    LI r1, FD_STDOUT
    LI r2, buf
    LI r3, 5
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, 1
    LI r2, buf
    LI r3, 5
    SYSCALL SYS_ARGV
    PRINT r0             ; -34 ERANGE: needs 6 bytes with the NUL
    LI r1, 1
    LI r3, 6
    SYSCALL SYS_ARGV
    PRINT r0             ; 5
    LI r1, 9
    LI r3, 64
    SYSCALL SYS_ARGV
    PRINT r0             ; -22 EINVAL
    HALT
