; print a NUL-terminated string from the data segment
.entry main
.data
msg: .asciz "Hello, chvm!\n"
.code
main:
    LI   r1, msg
loop:
    LD8  r2, [r1]
    JZ   r2, done
    PRINTC r2
    ADDI r1, r1, 1
    JMP  loop
done:
    HALT
