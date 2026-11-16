; faults are contained: a child that divides by zero or throws ends alone, and a monitor hears about it
.entry main
.data
s_msg: .word 4
       .byte 98, 111, 111, 109, 0, 0, 0, 0
.bss
buf: .zero 256
.code
main:
    ; 1. a child divides by zero. We monitor it, so we get a message and we are still alive
    LI r1, divider
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, SPAWN_MONITOR
    SYSCALL SYS_PSPAWN
    MOV r9, r0
    CALL hear
    ; 2. a child throws
    LI r1, thrower
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, SPAWN_MONITOR
    SYSCALL SYS_PSPAWN
    CALL hear
    ; 3. a child that exits with code 3
    LI r1, exiter
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, SPAWN_MONITOR
    SYSCALL SYS_PSPAWN
    CALL hear
    ; 4. a child that returns normally
    LI r1, quiet
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, SPAWN_MONITOR
    SYSCALL SYS_PSPAWN
    CALL hear
    ; 5. a child that uses up its stack
    LI r1, deep
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, SPAWN_MONITOR
    SYSCALL SYS_PSPAWN
    CALL hear
    ; 6. a child that runs for ever is killed
    LI r1, forever
    LI r2, 0
    LI r3, 0
    LI r4, 0
    LI r5, SPAWN_MONITOR
    SYSCALL SYS_PSPAWN
    MOV r10, r0
    LI r1, 50
    SYSCALL SYS_SLEEP
    MOV r1, r10
    SYSCALL SYS_PKILL
    PRINT r0               ; 0
    CALL hear
    ; 7. monitoring a pid that does not exist
    LI r1, 99999
    SYSCALL SYS_MONITOR
    CALL hear
    SYSCALL SYS_PCOUNT
    PRINT r0               ; 1: every child is gone
    LI r5, 777
    PRINT r5               ; we are still running
    HALT

; waits for a system message and prints "tag <first number> <first word after the pid>"
hear:
    LI r1, TAG_ANY
    LI r2, 3000
    SYSCALL SYS_MSGWAIT
    MOV r11, r0
    BLTI r11, 0, nomsg
    SYSCALL SYS_MSGTAG
    PRINT r0               ; -3
    LI r1, buf
    LI r2, 256
    SYSCALL SYS_MSGTAKE
    LI r4, buf
    LD8 r5, [r4]
    ADDI r5, r5, -48
    PRINT r5               ; the kind: the first digit of the text
    RET
nomsg:
    PRINT r11
    RET

divider:
    LI r2, 1
    LI r3, 0
    DIV r4, r2, r3
    RET
thrower:
    LI r2, s_msg
    THROW r2
exiter:
    LI r1, 3
    EXIT r1
quiet:
    RET
deep:
    CALL deep
    RET
forever:
    JMP forever
