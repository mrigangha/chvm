; a client that connects and sends nothing must not hold the server: READ gives up after the io timeout
; (-11, EAGAIN) and the loop moves on to the next connection
.entry main
.bss
buf: .zero 64
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
    LI r12, 0                ; connections handled
loop:
    MOV r1, r9
    LI r2, 5000
    LI r3, 200               ; a stuck read or write ends after 200 ms
    SYSCALL SYS_ACCEPT
    BLT r0, r12, stop        ; any negative result ends the test (r12 is 0 or more)
    MOV r10, r0
    MOV r1, r10
    LI r2, buf
    LI r3, 64
    SYSCALL SYS_READ
    PRINT r0                 ; bytes, 0 for a client that closed, -11 for one that stayed silent
    MOV r1, r10
    SYSCALL SYS_CLOSE
    ADDI r12, r12, 1
    BLTI r12, 4, loop
stop:
    PRINT r12
    HALT
