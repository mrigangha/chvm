.entry main
.data
p_true: .asciz "/bin/true"
.bss
av: .zero 2048
big: .zero 8000
.code
main:
    LI r1, 0
    LI r2, 0
    SYSCALL SYS_SPAWN
    PRINT r0
    HALT
