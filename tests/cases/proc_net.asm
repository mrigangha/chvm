; two clients at once on one server: a slow one that connects and says nothing, and a fast one. A process per
; connection means the fast one is answered while the slow one is still waiting
.entry main
.bss
buf: .zero 256
.code
main:
    LI r1, LISTEN_LOCAL
    LI r2, 0
    LI r3, 16
    SYSCALL SYS_LISTEN
    MOV r9, r0
    MOV r1, r9
    SYSCALL SYS_SOCKPORT
    PRINT r0               ; the port
    LI r12, 0
accept_loop:
    MOV r1, r9
    LI r2, 6000
    LI r3, 3000
    SYSCALL SYS_ACCEPT
    BLTI r0, 0, finish
    ; start a process for this connection and hand it the descriptor as its argument
    MOV r10, r0
    LI r4, buf
    ST64 [r4], r10
    LI r1, handler
    LI r2, buf
    LI r3, 8
    LI r4, 0
    LI r5, SPAWN_FRESH
    SYSCALL SYS_PSPAWN
    ADDI r12, r12, 1
    BLTI r12, 3, accept_loop
finish:
    LI r1, 3600            ; longer than the 3 s read timeout, so the silent client's handler ends by itself
    SYSCALL SYS_SLEEP
    SYSCALL SYS_PCOUNT
    PRINT r0               ; 1: every handler has ended
    HALT

; r1 = the argument string: 8 bytes holding the descriptor
handler:
    LD64 r10, [r1+8]
    LI r1, 0
    ; read, waiting for the client
    MOV r1, r10
    LI r2, buf
    LI r3, 64
    SYSCALL SYS_READ
    BLTI r0, 1, closeit    ; nothing came: the read timed out or the client left
    MOV r11, r0
    MOV r1, r10
    LI r2, buf
    MOV r3, r11
    SYSCALL SYS_WRITE
closeit:
    MOV r1, r10
    SYSCALL SYS_CLOSE
    RET
