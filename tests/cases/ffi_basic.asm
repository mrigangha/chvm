; call C functions with ints, 64-bit values, doubles, floats and mixed arguments
.entry main
.bss
path: .zero 256
args: .zero 128
.data
s_add:   .asciz "add_i"
s_mul:   .asciz "mul_u"
s_big:   .asciz "big"
s_hyp:   .asciz "hyp2"
s_half:  .asciz "halve"
s_mixed: .asciz "mixed"
g_ii_i:  .asciz "ii>i"
g_uu_u:  .asciz "uu>u"
g_ll_l:  .asciz "ll>l"
g_dd_d:  .asciz "dd>d"
g_f_f:   .asciz "f>f"
g_mixed: .asciz "idfld>d"
.code
main:
    LI r1, 1
    LI r2, path
    LI r3, 256
    SYSCALL SYS_ARGV
    LI r1, path
    SYSCALL SYS_DLOPEN
    MOV r9, r0                 ; library handle

    ; add_i(40, 2) = 42
    MOV r1, r9
    LI r2, s_add
    SYSCALL SYS_DLSYM
    MOV r8, r0
    LI r1, args
    LI r2, 40
    ST64 [r1], r2
    LI r2, 2
    ST64 [r1+8], r2
    LI r1, args
    LI r5, g_ii_i
    CALLX r0, r8, r5
    PRINT r0

    ; negative ints survive: add_i(-5, 2) = -3
    LI r1, args
    LI r2, -5
    ST64 [r1], r2
    LI r1, args
    CALLX r0, r8, r5
    PRINT r0

    ; 32-bit wrap: add_i(2147483647, 1) = -2147483648
    LI r1, args
    LI r2, 2147483647
    ST64 [r1], r2
    LI r2, 1
    ST64 [r1+8], r2
    LI r1, args
    CALLX r0, r8, r5
    PRINT r0

    ; mul_u(65536, 65537) wraps to 65536 and is zero-extended
    MOV r1, r9
    LI r2, s_mul
    SYSCALL SYS_DLSYM
    MOV r7, r0
    LI r1, args
    LI r2, 65536
    ST64 [r1], r2
    LI r2, 65537
    ST64 [r1+8], r2
    LI r1, args
    LI r5, g_uu_u
    CALLX r0, r7, r5
    PRINT r0

    ; big(5000000000, 7) = 5000000000007 * ... = 5000000000 * 1000 + 7
    MOV r1, r9
    LI r2, s_big
    SYSCALL SYS_DLSYM
    MOV r7, r0
    LI r1, args
    LI r2, 5000000000
    ST64 [r1], r2
    LI r2, 7
    ST64 [r1+8], r2
    LI r1, args
    LI r5, g_ll_l
    CALLX r0, r7, r5
    PRINT r0

    ; hyp2(3.0, 4.0) = 25
    MOV r1, r9
    LI r2, s_hyp
    SYSCALL SYS_DLSYM
    MOV r7, r0
    LI r1, args
    LIF r2, 3.0
    ST64 [r1], r2
    LIF r2, 4.0
    ST64 [r1+8], r2
    LI r1, args
    LI r5, g_dd_d
    CALLX r0, r7, r5
    PRINTF r0

    ; halve(5.0f) = 2.5f, a float is in the low 32 bits
    MOV r1, r9
    LI r2, s_half
    SYSCALL SYS_DLSYM
    MOV r7, r0
    LI r1, args
    LIFS r2, 5.0
    ST64 [r1], r2
    LI r1, args
    LI r5, g_f_f
    CALLX r0, r7, r5
    PRINTFS r0

    ; mixed(1, 2.5, 0.25f, 100, 0.125) = 103.875
    MOV r1, r9
    LI r2, s_mixed
    SYSCALL SYS_DLSYM
    MOV r7, r0
    LI r1, args
    LI r2, 1
    ST64 [r1], r2
    LIF r2, 2.5
    ST64 [r1+8], r2
    LIFS r2, 0.25
    ST64 [r1+16], r2
    LI r2, 100
    ST64 [r1+24], r2
    LIF r2, 0.125
    ST64 [r1+32], r2
    LI r1, args
    LI r5, g_mixed
    CALLX r0, r7, r5
    PRINTF r0
    HALT
