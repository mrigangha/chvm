; pointers, strings, buffers filled by C, and a pointer that comes back
.entry main
.bss
path: .zero 256
args: .zero 128
buf:  .zero 64
.data
n_fill:   .asciz "fill"
n_sum:    .asciz "sum_bytes"
n_len:    .asciz "str_len"
n_up:     .asciz "upcase"
n_null:   .asciz "is_null"
n_find:   .asciz "find_char"
n_fmt:    .asciz "fmt_int"
g_fill:   .asciz "pii>v"
g_sum:    .asciz "pi>i"
g_len:    .asciz "s>l"
g_up:     .asciz "p>v"
g_null:   .asciz "p>i"
g_find:   .asciz "pi>p"
g_fmt:    .asciz "pii>i"
text:     .asciz "hello, chvm"
.code
sym:                           ; r1 = name address -> r0 = function id (library handle in r9)
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

    ; fill(buf, 10, 7) then sum_bytes(buf, 12) = 70
    LI r1, n_fill
    CALL sym
    MOV r8, r0
    LI r1, args
    LI r2, buf
    ST64 [r1], r2
    LI r2, 10
    ST64 [r1+8], r2
    LI r2, 7
    ST64 [r1+16], r2
    LI r1, args
    LI r5, g_fill
    CALLX r0, r8, r5
    LI r4, buf
    LD8 r0, [r4+9]
    PRINT r0                   ; 7
    LD8 r0, [r4+10]
    PRINT r0                   ; 0: C did not write past n

    LI r1, n_sum
    CALL sym
    MOV r8, r0
    LI r1, args
    LI r2, buf
    ST64 [r1], r2
    LI r2, 12
    ST64 [r1+8], r2
    LI r1, args
    LI r5, g_sum
    CALLX r0, r8, r5
    PRINT r0                   ; 70

    ; str_len("hello, chvm") = 11
    LI r1, n_len
    CALL sym
    MOV r8, r0
    LI r1, args
    LI r2, text
    ST64 [r1], r2
    LI r1, args
    LI r5, g_len
    CALLX r0, r8, r5
    PRINT r0

    ; upcase edits our memory in place
    LI r1, n_up
    CALL sym
    MOV r8, r0
    LI r1, args
    LI r2, text
    ST64 [r1], r2
    LI r1, args
    LI r5, g_up
    CALLX r0, r8, r5
    LI r1, FD_STDOUT
    LI r2, text
    LI r3, 11
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1

    ; is_null(0) = 1, is_null(text) = 0
    LI r1, n_null
    CALL sym
    MOV r8, r0
    LI r1, args
    LI r2, 0
    ST64 [r1], r2
    LI r1, args
    LI r5, g_null
    CALLX r0, r8, r5
    PRINT r0
    LI r1, args
    LI r2, text
    ST64 [r1], r2
    LI r1, args
    CALLX r0, r8, r5
    PRINT r0

    ; find_char(text, 'C') returns a pointer inside our memory, as a guest address
    LI r1, n_find
    CALL sym
    MOV r8, r0
    LI r1, args
    LI r2, text
    ST64 [r1], r2
    LI r2, 'C'
    ST64 [r1+8], r2
    LI r1, args
    LI r5, g_find
    CALLX r0, r8, r5
    LI r4, text
    SUB r0, r0, r4
    PRINT r0                   ; 7: offset of 'C' in "HELLO, CHVM"
    ; not found gives 0
    LI r1, args
    LI r2, 'z'
    ST64 [r1+8], r2
    LI r1, args
    CALLX r0, r8, r5
    PRINT r0                   ; 0

    ; fmt_int(buf, 64, -42) writes "<-42>" and returns 5
    LI r1, n_fmt
    CALL sym
    MOV r8, r0
    LI r1, args
    LI r2, buf
    ST64 [r1], r2
    LI r2, 64
    ST64 [r1+8], r2
    LI r2, -42
    ST64 [r1+16], r2
    LI r1, args
    LI r5, g_fmt
    CALLX r0, r8, r5
    PRINT r0
    LI r1, FD_STDOUT
    LI r2, buf
    LI r3, 5
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    HALT
