; a symbol name longer than the 255-byte buffer must be refused, not overflow the stack
.entry main
.bss
buf: .zero 5000
.code
main:
    LI r1, 0
    SYSCALL SYS_DLOPEN
    MOV r9, r0
    LI r2, buf
    LI r3, 0x41
    LI r4, 4000
    MEMSET r2, r3, r4
    MOV r1, r9
    LI r2, buf
    SYSCALL SYS_DLSYM
    PRINT r0
    LI r4, 255
    MEMSET r2, r3, r4        ; 255 characters: still too long, the NUL needs the 256th byte? no: fits exactly
    LI r5, 0
    ST8 [r2+255], r5
    MOV r1, r9
    SYSCALL SYS_DLSYM
    PRINT r0
    LI r4, 256
    LI r5, 0x41
    MEMSET r2, r5, r4
    MOV r1, r9
    SYSCALL SYS_DLSYM
    PRINT r0
    HALT
