; spawn a process, send it a message, get a reply, and see it end
.entry main
.data
s_hello: .word 5
         .byte 104, 101, 108, 108, 111, 0, 0, 0
.bss
buf: .zero 64
.code
main:
    SYSCALL SYS_SELF
    PRINT r0               ; 1
    LI r1, worker
    LI r2, s_hello
    ADDI r2, r2, 8
    LI r3, 5
    LI r4, 0
    LI r5, 0
    SYSCALL SYS_PSPAWN
    MOV r9, r0             ; the child's pid
    BLTI r9, 1, fail
    SYSCALL SYS_PCOUNT
    PRINT r0               ; 2
    ; send the child a message, tag 7
    MOV r1, r9
    LI r2, 7
    LI r3, s_hello
    ADDI r3, r3, 8
    LI r4, 5
    SYSCALL SYS_SEND
    PRINT r0               ; 0
    ; wait for its reply, tag 8
    LI r1, 8
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    PRINT r0               ; 5
    SYSCALL SYS_MSGFROM
    MOV r12, r0
    LI r1, buf
    LI r2, 64
    SYSCALL SYS_MSGTAKE
    PRINT r0               ; 5
    LI r4, buf
    LD8 r5, [r4]
    PRINT r5               ; 72: the reply is "HELLO", upper case
    SUB r5, r12, r9
    PRINT r5               ; 0: it came from the child
    ; the child has ended by now
    LI r1, 100
    SYSCALL SYS_SLEEP
    SYSCALL SYS_PCOUNT
    PRINT r0               ; 1
    MOV r1, r9
    LI r2, 0
    SYSCALL SYS_PINFO
    PRINT r0               ; 0: no longer alive
    MOV r1, r9
    LI r2, 1
    LI r3, s_hello
    LI r4, 0
    SYSCALL SYS_SEND
    PRINT r0               ; -3 ESRCH
    HALT
fail:
    PRINT r9
    HALT
worker:
    ; r1 = address of the argument string "hello". Wait for a message with tag 7, upper-case it, send it back
    MOV r10, r1
    LI r1, 7
    LI r2, 2000
    SYSCALL SYS_MSGWAIT
    MOV r11, r0
    SYSCALL SYS_MSGFROM
    MOV r12, r0            ; the sender, read before MSGTAKE removes the message
    LI r1, buf
    LI r2, 64
    SYSCALL SYS_MSGTAKE
    LI r4, 0
    LI r5, buf
up:
    BGE r4, r11, done
    ADD r6, r5, r4
    LD8 r7, [r6]
    ADDI r7, r7, -32
    ST8 [r6], r7
    ADDI r4, r4, 1
    JMP up
done:
    MOV r1, r12
    LI r2, 8
    LI r3, buf
    MOV r4, r11
    SYSCALL SYS_SEND
    RET
