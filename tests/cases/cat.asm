; copy stdin to stdout
.entry main
.bss
buf: .zero 4096
.code
main:
loop:
    LI r1, FD_STDIN
    LI r2, buf
    LI r3, 4096
    SYSCALL SYS_READ
    LTI r4, r0, 1        ; 0 = end of file, negative = error
    JNZ r4, done
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    JMP loop
done:
    HALT
