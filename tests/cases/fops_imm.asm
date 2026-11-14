.entry main
.bss
buf: .zero 64
.code
main:
    LI r5, 0
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 0
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -9223372036854775808
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4607182418800017408
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4616189618054758400
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4611686018427387904
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4611686018427387904
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4613937818241073152
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4619567317775286272
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4603804719079489536
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4617878467915022336
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4605493568939753472
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4591870180066957722
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4831355200913801216
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4392016835940974592
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845865999795912704
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4846369599423283200
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4728057454347157504
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4751297606875873280
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4845873199050653696
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4602678819172646912
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9221120237041090560
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9218868437227405312
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4503599627370496
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 9094988921128908188
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 1
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4625478292286210048
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, 4636737291354636288
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FADDI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FSUBI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMULI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FDIVI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMODI r0, r5, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FADDI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FSUBI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMULI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FDIVI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMODI r0, r5, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FADDI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FSUBI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMULI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FDIVI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMODI r0, r5, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FADDI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FSUBI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMULI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FDIVI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMODI r0, r5, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FADDI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FSUBI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMULI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FDIVI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMODI r0, r5, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FADDI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FSUBI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMULI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FDIVI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMODI r0, r5, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FADDI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FSUBI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMULI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FDIVI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMODI r0, r5, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FADDI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FSUBI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMULI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FDIVI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMODI r0, r5, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FADDI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FSUBI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMULI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FDIVI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMODI r0, r5, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FADDI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FSUBI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMULI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FDIVI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMODI r0, r5, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FADDI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FSUBI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMULI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FDIVI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMODI r0, r5, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FADDI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FSUBI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMULI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FDIVI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMODI r0, r5, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FADDI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FSUBI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMULI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FDIVI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    FMODI r0, r5, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 0
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, -9223372036854775808
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4607182418800017408
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, -4616189618054758400
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, -4611686018427387904
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4613937818241073152
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4619567317775286272
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, -4603804719079489536
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4617878467915022336
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, -4605493568939753472
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4591870180066957722
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4831355200913801216
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, -4392016835940974592
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4845865999795912704
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4846369599423283200
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4728057454347157504
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4751297606875873280
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4845873199050653696
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4602678819172646912
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 9221120237041090560
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 9218868437227405312
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, -4503599627370496
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 9094988921128908188
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 1
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4625478292286210048
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, 4636737291354636288
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r5, -4586634745500139520
    LI r6, -4586634745500139520
    FMOD r0, r5, r6
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    FMOVI r0, 0
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    FMOVI r0, 1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    FMOVI r0, -1
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    FMOVI r0, 2
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    FMOVI r0, 3
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    FMOVI r0, 7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    FMOVI r0, -7
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    FMOVI r0, 100
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    FMOVI r0, 1000
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    FMOVI r0, 65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    FMOVI r0, -65536
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    FMOVI r0, 2147483647
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    FMOVI r0, -2147483648
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    HALT
