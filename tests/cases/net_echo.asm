; listens on a free port on 127.0.0.1, prints the port, accepts one connection, reads a request,
; writes it back in upper case, then half-closes and closes
.entry main
.bss
buf: .zero 256
.code
main:
    LI r1, LISTEN_LOCAL
    LI r2, 0
    LI r3, 8
    SYSCALL SYS_LISTEN
    MOV r9, r0              ; r9 = listening fd
    BLT r9, r0, fail        ; never taken: r0 is the fd
    MOV r1, r9
    SYSCALL SYS_SOCKPORT
    PRINT r0                ; the port, which the test reads
    MOV r1, r9
    LI r2, 5000             ; wait up to 5 s for a client
    LI r3, 5000             ; give up on a stuck read after 5 s
    SYSCALL SYS_ACCEPT
    MOV r10, r0             ; r10 = connection fd
    MOV r1, r10
    LI r2, buf
    LI r3, 256
    SYSCALL SYS_READ
    MOV r11, r0             ; r11 = bytes read
    PRINT r11
    LI r4, 0                ; upper-case the bytes
    LI r5, buf
up:
    BGE r4, r11, done
    ADD r6, r5, r4
    LD8 r7, [r6]
    BLTI r7, 97, skip
    BGEI r7, 123, skip
    ADDI r7, r7, -32
    ST8 [r6], r7
skip:
    ADDI r4, r4, 1
    JMP up
done:
    MOV r1, r10
    LI r2, buf
    MOV r3, r11
    SYSCALL SYS_WRITE
    PRINT r0                ; bytes written
    MOV r1, r10
    LI r2, SHUT_WR
    SYSCALL SYS_SHUTDOWN
    PRINT r0                ; 0
    MOV r1, r10
    SYSCALL SYS_CLOSE
    PRINT r0                ; 0
    MOV r1, r9
    SYSCALL SYS_CLOSE
    PRINT r0                ; 0
    HALT
fail:
    PRINT r0
    HALT
