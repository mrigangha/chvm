; many arguments (stack passed), a variadic function, native handles, and the host libc
.entry main
.bss
path: .zero 256
args: .zero 256
buf:  .zero 64
.data
n_many:   .asciz "many"
n_vsum:   .asciz "vsum"
n_new:    .asciz "handle_new"
n_get:    .asciz "handle_get"
n_free:   .asciz "handle_free"
n_next:   .asciz "next_count"
n_abs:    .asciz "abs"
n_sqrt:   .asciz "sqrt"
n_strlen: .asciz "strlen"
g_many:   .asciz "iiiiiiiidddddddd>d"
g_vsum:   .asciz "i.iiid>d"
g_l_l:    .asciz "l>l"
g_l_v:    .asciz "l>v"
g_v_i:    .asciz ">i"
g_i_i:    .asciz "i>i"
g_d_d:    .asciz "d>d"
g_s_l:    .asciz "s>l"
text:     .asciz "twelve chars"
.code
sym:                           ; r1 = name -> r0 = id, library handle in r9
    MOV r2, r1
    MOV r1, r9
    SYSCALL SYS_DLSYM
    RET
main:
    LI r1, 1
    LI r2, path
    LI r3, 256
    SYSCALL SYS_ARGV
    LI r1, path
    SYSCALL SYS_DLOPEN
    MOV r9, r0

    ; many(1..8, 0.5, 1.5 .. 7.5) = 390
    LI r1, n_many
    CALL sym
    MOV r8, r0
    LI r4, args
    LI r5, 1
    LI r6, 0
fill_i:
    SHLI r7, r6, 3
    ADD r7, r7, r4
    ADDI r2, r6, 1
    ST64 [r7], r2
    ADDI r6, r6, 1
    BLTI r6, 8, fill_i
    LIF r2, 0.5
    ST64 [r4+64], r2
    LIF r2, 1.5
    ST64 [r4+72], r2
    LIF r2, 2.5
    ST64 [r4+80], r2
    LIF r2, 3.5
    ST64 [r4+88], r2
    LIF r2, 4.5
    ST64 [r4+96], r2
    LIF r2, 5.5
    ST64 [r4+104], r2
    LIF r2, 6.5
    ST64 [r4+112], r2
    LIF r2, 7.5
    ST64 [r4+120], r2
    LI r1, args
    LI r5, g_many
    CALLX r0, r8, r5
    PRINTF r0

    ; vsum(3, 10, 20, 30, 0.5) = 60.5, "i.iiid>d": one fixed, then variadic
    LI r1, n_vsum
    CALL sym
    MOV r8, r0
    LI r4, args
    LI r2, 3
    ST64 [r4], r2
    LI r2, 10
    ST64 [r4+8], r2
    LI r2, 20
    ST64 [r4+16], r2
    LI r2, 30
    ST64 [r4+24], r2
    LIF r2, 0.5
    ST64 [r4+32], r2
    LI r1, args
    LI r5, g_vsum
    CALLX r0, r8, r5
    PRINTF r0

    ; a native handle is an opaque 64-bit number: new, get, free
    LI r1, n_new
    CALL sym
    MOV r6, r0
    LI r1, n_get
    CALL sym
    MOV r7, r0
    LI r1, n_free
    CALL sym
    MOV r8, r0
    LI r4, args
    LI r2, 123456
    ST64 [r4], r2
    LI r1, args
    LI r5, g_l_l
    CALLX r10, r6, r5          ; r10 = native handle
    LI r4, args
    ST64 [r4], r10
    LI r1, args
    CALLX r0, r7, r5
    PRINT r0                   ; 123456
    LI r4, args
    ST64 [r4], r10
    LI r1, args
    LI r5, g_l_v
    CALLX r0, r8, r5

    ; a function with no arguments keeps state in the library
    LI r1, n_next
    CALL sym
    MOV r8, r0
    LI r5, g_v_i
    LI r1, args
    CALLX r0, r8, r5
    PRINT r0
    CALLX r0, r8, r5
    PRINT r0
    CALLX r0, r8, r5
    PRINT r0

    ; handle 0 opens the host process: libc and libm are available
    LI r1, 0
    SYSCALL SYS_DLOPEN
    MOV r9, r0
    LI r1, n_abs
    CALL sym
    MOV r8, r0
    LI r4, args
    LI r2, -17
    ST64 [r4], r2
    LI r1, args
    LI r5, g_i_i
    CALLX r0, r8, r5
    PRINT r0                   ; 17
    LI r1, n_strlen
    CALL sym
    MOV r8, r0
    LI r4, args
    LI r2, text
    ST64 [r4], r2
    LI r1, args
    LI r5, g_s_l
    CALLX r0, r8, r5
    PRINT r0                   ; 12
    LI r1, n_sqrt
    CALL sym
    MOV r8, r0
    LI r4, args
    LIF r2, 2.0
    ST64 [r4], r2
    LI r1, args
    LI r5, g_d_d
    CALLX r0, r8, r5
    PRINTF r0                  ; 1.4142135623730951
    HALT
