; write a file, read it back in two pieces, seek, append, delete
.entry main
.data
path:  .asciz "/tmp/chvm_test_file.bin"
text:  .ascii "0123456789"
.bss
buf:   .zero 32
.code
main:
    LI r1, path
    LI r2, O_WRONLY
    ORI r2, r2, O_CREAT
    ORI r2, r2, O_TRUNC
    LI r3, 0x1a4
    SYSCALL SYS_OPEN
    LTI r9, r0, 0
    JNZ r9, fail
    MOV r8, r0           ; fd
    MOV r1, r8
    LI r2, text
    LI r3, 10
    SYSCALL SYS_WRITE
    PRINT r0             ; 10
    MOV r1, r8
    SYSCALL SYS_CLOSE
    PRINT r0             ; 0
    MOV r1, r8
    SYSCALL SYS_CLOSE
    PRINT r0             ; -9 closing twice

    LI r1, path
    LI r2, O_RDONLY
    LI r3, 0
    SYSCALL SYS_OPEN
    MOV r8, r0
    MOV r1, r8
    LI r2, buf
    LI r3, 4
    SYSCALL SYS_READ
    PRINT r0             ; 4
    LI r1, FD_STDOUT
    LI r2, buf
    LI r3, 4
    SYSCALL SYS_WRITE    ; 0123
    LI r1, 10
    PRINTC r1
    MOV r1, r8
    LI r2, 2
    LI r3, SEEK_SET
    SYSCALL SYS_SEEK
    PRINT r0             ; 2
    MOV r1, r8
    LI r2, buf
    LI r3, 32
    SYSCALL SYS_READ
    PRINT r0             ; 8
    MOV r1, r8
    LI r2, buf
    LI r3, 32
    SYSCALL SYS_READ
    PRINT r0             ; 0 at end of file
    MOV r1, r8
    LI r2, -3
    LI r3, SEEK_END
    SYSCALL SYS_SEEK
    PRINT r0             ; 7
    MOV r1, r8
    SYSCALL SYS_CLOSE

    LI r1, path
    SYSCALL SYS_UNLINK
    PRINT r0             ; 0
    LI r1, path
    LI r2, O_RDONLY
    SYSCALL SYS_OPEN
    PRINT r0             ; -2 ENOENT
    HALT
fail:
    LI r1, 1
    EXIT r1
