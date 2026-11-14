.entry main
.bss
path: .zero 256
args: .zero 256
.data
n_add: .asciz "add_i"
.code
main:
    LI r1, 1
    LI r2, path
    LI r3, 256
    SYSCALL SYS_ARGV
    LI r1, path
    SYSCALL SYS_DLOPEN
    MOV r9, r0
    MOV r1, r9
    LI r2, n_add
    SYSCALL SYS_DLSYM
    MOV r8, r0
    LI r5, 67108800           ; 64 bytes before the end of memory
    LI r2, 0x41
    LI r3, 64
    MEMSET r5, r2, r3
    LI r1, args
    CALLX r0, r8, r5
    HALT
