.entry main
.data
p_true: .asciz "/bin/true"
.bss
av: .zero 2048
big: .zero 8000
.code
main:
    LI r1, av
    LI r2, p_true
    ST64 [r1], r2
    LI r2, 0
    ST64 [r1+8], r2
    LI r2, 1
    SYSCALL SYS_SPAWN
    PRINT r0
    HALT
