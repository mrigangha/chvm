; without -F every foreign operation is refused
.entry main
.data
n: .asciz "abs"
g: .asciz "i>i"
.code
main:
    LI r1, 0
    SYSCALL SYS_DLOPEN
    PRINT r0                   ; -1 EPERM
    LI r1, 1
    LI r2, n
    SYSCALL SYS_DLSYM
    PRINT r0                   ; -1
    LI r1, 1
    SYSCALL SYS_DLCLOSE
    PRINT r0                   ; -1
    LI r8, 1
    LI r1, 4096
    LI r5, g
    CALLX r0, r8, r5
    HALT
