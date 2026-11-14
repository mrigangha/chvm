.entry main
.bss
path: .zero 256
args: .zero 256
.data
n_add: .asciz "add_i"
n_static: .asciz "static_text"
n_strlen: .asciz "str_len"
n_fill: .asciz "fill"
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
    LI r1, n_strlen
    MOV r2, r1
    MOV r1, r9
    SYSCALL SYS_DLSYM
    MOV r8, r0
    LI r4, args
    LI r2, 0x7ffffff0
    ST64 [r4], r2
    LI r1, args
    LI r5, g
    CALLX r0, r8, r5
.data
g: .asciz "s>l"
.code
    HALT
