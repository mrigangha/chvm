.entry main
.data
path:  .asciz "/tmp/opencode/fdleak.txt"
sh:    .asciz "/bin/sh"
dashc: .asciz "-c"
cmd:   .asciz "echo leaked >&3 2>/dev/null; echo child_rc=$?"
.bss
av: .zero 64
.code
main:
    LI r1, path
    LI r2, O_WRONLY
    ORI r2, r2, O_CREAT
    ORI r2, r2, O_TRUNC
    LI r3, 0x1a4
    SYSCALL SYS_OPEN
    PRINT r0                  ; the descriptor number we hold, 3
    LI r1, av
    LI r2, sh
    ST64 [r1], r2
    LI r2, dashc
    ST64 [r1+8], r2
    LI r2, cmd
    ST64 [r1+16], r2
    LI r2, 0
    ST64 [r1+24], r2
    LI r2, 0
    SYSCALL SYS_SPAWN
    PRINT r0
    HALT
