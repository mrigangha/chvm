.entry main
.data
p_true:   .asciz "/bin/true"
p_false:  .asciz "/bin/false"
p_echo:   .asciz "/bin/echo"
p_sh:     .asciz "/bin/sh"
p_c:      .asciz "-c"
p_exit7:  .asciz "exit 7"
p_kill:   .asciz "kill -9 $$"
p_hello:  .asciz "hello from the child"
p_none:   .asciz "/no/such/program"
p_dir:    .asciz "/tmp"
.bss
av: .zero 64
.code
main:
    ; /bin/true -> 0
    LI r1, av
    LI r2, p_true
    ST64 [r1], r2
    LI r2, 0
    ST64 [r1+8], r2
    LI r2, 0
    SYSCALL SYS_SPAWN
    PRINT r0
    ; /bin/false -> 1
    LI r1, av
    LI r2, p_false
    ST64 [r1], r2
    LI r2, 0
    SYSCALL SYS_SPAWN
    PRINT r0
    ; echo with an argument: the child's output appears, in order with ours
    LI r1, 7
    PRINT r1
    LI r1, av
    LI r2, p_echo
    ST64 [r1], r2
    LI r2, p_hello
    ST64 [r1+8], r2
    LI r2, 0
    ST64 [r1+16], r2
    LI r2, 0
    SYSCALL SYS_SPAWN
    PRINT r0
    ; sh -c "exit 7" -> 7
    LI r1, av
    LI r2, p_sh
    ST64 [r1], r2
    LI r2, p_c
    ST64 [r1+8], r2
    LI r2, p_exit7
    ST64 [r1+16], r2
    LI r2, 0
    ST64 [r1+24], r2
    LI r2, 0
    SYSCALL SYS_SPAWN
    PRINT r0
    ; killed by signal 9 -> 137
    LI r1, av
    LI r2, p_sh
    ST64 [r1], r2
    LI r2, p_c
    ST64 [r1+8], r2
    LI r2, p_kill
    ST64 [r1+16], r2
    LI r2, 0
    SYSCALL SYS_SPAWN
    PRINT r0
    ; a program that does not exist -> -2 ENOENT
    LI r1, av
    LI r2, p_none
    ST64 [r1], r2
    LI r2, 0
    ST64 [r1+8], r2
    LI r2, 0
    SYSCALL SYS_SPAWN
    PRINT r0
    ; a directory is not executable -> -13 EACCES
    LI r1, av
    LI r2, p_dir
    ST64 [r1], r2
    LI r2, 0
    SYSCALL SYS_SPAWN
    PRINT r0
    HALT
