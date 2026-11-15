.entry main
.data
p_true: .asciz "/bin/true"
.bss
av: .zero 2048
big: .zero 8000
.code
main:
    LI r3, 0
fill:
    SHLI r4, r3, 3
    LI r5, p_true
    LI r1, av
    ADD r4, r4, r1
    ST64 [r4], r5
    ADDI r3, r3, 1
    BLTI r3, 100, fill
    LI r1, av
    LI r2, 0
    SYSCALL SYS_SPAWN
    PRINT r0
    HALT
