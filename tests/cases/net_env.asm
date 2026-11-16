; GETENV copies the value with a NUL and returns its length
.entry main
.data
n_set:   .asciz "CHVM_TEST_VAR"
n_none:  .asciz "CHVM_TEST_NOT_SET"
n_empty: .asciz "CHVM_TEST_EMPTY"
.bss
buf: .zero 64
.code
main:
    LI r1, n_set
    LI r2, buf
    LI r3, 64
    SYSCALL SYS_GETENV
    PRINT r0               ; 5
    LI r4, buf
    LD8 r5, [r4]
    PRINT r5               ; 104 'h'
    LD8 r5, [r4+5]
    PRINT r5               ; 0 the NUL
    LI r1, n_set
    LI r2, buf
    LI r3, 6
    SYSCALL SYS_GETENV
    PRINT r0               ; 5: exactly enough room (5 + NUL)
    LI r1, n_set
    LI r2, buf
    LI r3, 5
    SYSCALL SYS_GETENV
    PRINT r0               ; -34 ERANGE: no room for the NUL
    LI r1, n_none
    LI r2, buf
    LI r3, 64
    SYSCALL SYS_GETENV
    PRINT r0               ; -2 ENOENT
    LI r1, n_empty
    LI r2, buf
    LI r3, 64
    SYSCALL SYS_GETENV
    PRINT r0               ; 0: set but empty
    LI r1, 0
    LI r2, buf
    LI r3, 64
    SYSCALL SYS_GETENV
    PRINT r0               ; -14 EFAULT: null name
    LI r1, n_set
    LI r2, 0
    LI r3, 64
    SYSCALL SYS_GETENV
    PRINT r0               ; -14 EFAULT: null buffer
    LI r1, n_set
    LI r2, buf
    LI r3, 0
    SYSCALL SYS_GETENV
    PRINT r0               ; -34 ERANGE
    HALT
