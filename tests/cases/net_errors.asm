; bad arguments to the network calls return -errno and change nothing
.entry main
.bss
buf: .zero 64
.code
main:
    ; LISTEN: host must be 0 or 1, port 0..65535, backlog 1..4096
    LI r1, 2
    LI r2, 0
    LI r3, 8
    SYSCALL SYS_LISTEN
    PRINT r0               ; -22
    LI r1, 0
    LI r2, 65536
    LI r3, 8
    SYSCALL SYS_LISTEN
    PRINT r0               ; -22
    LI r1, 0
    LI r2, 0
    LI r3, 0
    SYSCALL SYS_LISTEN
    PRINT r0               ; -22
    LI r1, 0
    LI r2, 0
    LI r3, 4097
    SYSCALL SYS_LISTEN
    PRINT r0               ; -22
    ; a port that is already taken: a second listener on it fails, even with SO_REUSEADDR
    LI r1, 0
    LI r2, 0
    LI r3, 8
    SYSCALL SYS_LISTEN
    MOV r9, r0
    MOV r1, r9
    SYSCALL SYS_SOCKPORT
    MOV r2, r0
    LI r1, 0
    LI r3, 8
    SYSCALL SYS_LISTEN
    PRINT r0               ; -98 EADDRINUSE
    MOV r1, r9
    SYSCALL SYS_CLOSE
    PRINT r0               ; 0
    ; ACCEPT, POLL, SHUTDOWN, SOCKPORT on things that are not sockets
    LI r1, 99
    LI r2, 0
    LI r3, 0
    SYSCALL SYS_ACCEPT
    PRINT r0               ; -88 ENOTSOCK or -9 EBADF
    LI r1, -1
    LI r2, 0
    LI r3, 0
    SYSCALL SYS_ACCEPT
    PRINT r0               ; -9
    LI r1, 3
    LI r2, 0
    LI r3, 3600001
    SYSCALL SYS_ACCEPT
    PRINT r0               ; -22 io timeout too big
    LI r1, 3
    LI r2, -2
    LI r3, 0
    SYSCALL SYS_ACCEPT
    PRINT r0               ; -22 wait below -1
    LI r1, 0
    LI r2, 1
    LI r3, 0
    SYSCALL SYS_POLL
    PRINT r0               ; stdin is /dev/null, which is always readable: 1
    LI r1, 99
    LI r2, 1
    LI r3, 0
    SYSCALL SYS_POLL
    PRINT r0               ; -9 EBADF
    LI r1, 0
    LI r2, 0
    LI r3, 0
    SYSCALL SYS_POLL
    PRINT r0               ; -22 no events asked for
    LI r1, 0
    LI r2, 4
    LI r3, 0
    SYSCALL SYS_POLL
    PRINT r0               ; -22 bad event bits
    LI r1, 0
    LI r2, 1
    SYSCALL SYS_SHUTDOWN
    PRINT r0               ; -88 ENOTSOCK: stdin is not a socket
    LI r1, 99
    LI r2, 1
    SYSCALL SYS_SHUTDOWN
    PRINT r0               ; -9
    LI r1, 0
    LI r2, 3
    SYSCALL SYS_SHUTDOWN
    PRINT r0               ; -22 how is 0, 1 or 2
    LI r1, 0
    SYSCALL SYS_SOCKPORT
    PRINT r0               ; -88 ENOTSOCK
    LI r1, 99
    SYSCALL SYS_SOCKPORT
    PRINT r0               ; -9
    LI r1, -5
    SYSCALL SYS_SOCKPORT
    PRINT r0               ; -9
    ; a listening socket is a socket, and a read from it is an error, not a hang
    LI r1, 0
    LI r2, 0
    LI r3, 8
    SYSCALL SYS_LISTEN
    MOV r9, r0
    MOV r1, r9
    LI r2, 1
    LI r3, 0
    SYSCALL SYS_POLL
    PRINT r0               ; 0: nothing is waiting, and it did not wait (wait 0)
    MOV r1, r9
    LI r2, 0
    LI r3, 0
    SYSCALL SYS_ACCEPT
    PRINT r0               ; -110 ETIMEDOUT: wait 0 and nobody there
    MOV r1, r9
    LI r2, 30
    LI r3, 0
    SYSCALL SYS_ACCEPT
    PRINT r0               ; -110 after about 30 ms
    MOV r1, r9
    SYSCALL SYS_CLOSE
    PRINT r0               ; 0
    MOV r1, r9
    SYSCALL SYS_CLOSE
    PRINT r0               ; -9: already closed
    HALT
