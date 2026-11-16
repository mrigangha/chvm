; a write to a client that has stopped reading: with a short io timeout it returns instead of hanging,
; and a write to a socket the client closed returns -32 (EPIPE) and does not kill the program
.entry main
.bss
buf: .zero 65536
.code
main:
    LI r1, LISTEN_LOCAL
    LI r2, 0
    LI r3, 8
    SYSCALL SYS_LISTEN
    MOV r9, r0
    MOV r1, r9
    SYSCALL SYS_SOCKPORT
    PRINT r0
    ; connection 1: the client never reads. Write 64 KiB blocks until one does not finish
    MOV r1, r9
    LI r2, 5000
    LI r3, 300
    SYSCALL SYS_ACCEPT
    MOV r10, r0
    LI r11, 0                ; blocks that went through
fill:
    MOV r1, r10
    LI r2, buf
    LI r3, 65536
    SYSCALL SYS_WRITE
    BLTI r0, 1, stuck        ; a short or failed write ends the loop
    ADDI r11, r11, 1
    BLTI r11, 400, fill
stuck:
    LTI r5, r0, 1
    PRINT r5                 ; 1: the write failed or stalled instead of hanging for ever
    MOV r1, r10
    SYSCALL SYS_CLOSE
    ; connection 2: the client closes before we write. The first write may succeed, a later one gets EPIPE
    MOV r1, r9
    LI r2, 5000
    LI r3, 300
    SYSCALL SYS_ACCEPT
    MOV r10, r0
    MOV r1, r10
    LI r2, 1000
    LI r3, 0
    SYSCALL SYS_POLL         ; wait for the client's close to arrive
    LI r12, 0
again:
    MOV r1, r10
    LI r2, buf
    LI r3, 100
    SYSCALL SYS_WRITE
    BLTI r0, 0, broke
    ADDI r12, r12, 1
    BLTI r12, 50, again
broke:
    PRINT r0                 ; -32 EPIPE (or -104 ECONNRESET): negative, and the program is still here
    MOV r1, r10
    SYSCALL SYS_CLOSE
    PRINT r0
    HALT
