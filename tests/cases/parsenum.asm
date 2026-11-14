.entry main
.data
t0: .byte 0
t1: .byte 32
t2: .byte 48
t3: .byte 49
t4: .byte 45, 49
t5: .byte 43, 49
t6: .byte 49, 50
t7: .byte 49, 46, 53
t8: .byte 46, 53
t9: .byte 53, 46
t10: .byte 49, 101, 51
t11: .byte 49, 69, 45, 51
t12: .byte 49, 46, 53, 101, 43, 50
t13: .byte 32, 49, 50, 32
t14: .byte 9, 55, 10
t15: .byte 48, 120, 49, 102
t16: .byte 48, 88, 49, 70
t17: .byte 48, 98, 49, 48, 49
t18: .byte 48, 111, 49, 55
t19: .byte 45, 48, 120, 49, 102
t20: .byte 73, 110, 102, 105, 110, 105, 116, 121
t21: .byte 45, 73, 110, 102, 105, 110, 105, 116, 121
t22: .byte 43, 73, 110, 102, 105, 110, 105, 116, 121
t23: .byte 105, 110, 102, 105, 110, 105, 116, 121
t24: .byte 78, 97, 78
t25: .byte 97, 98, 99
t26: .byte 49, 97, 98, 99
t27: .byte 49, 32, 50
t28: .byte 49, 46, 50, 46, 51
t29: .byte 101, 53
t30: .byte 49, 101
t31: .byte 49, 101, 43
t32: .byte 46
t33: .byte 45
t34: .byte 45, 45, 49
t35: .byte 48, 120
t36: .byte 48, 120, 103
t37: .byte 49, 95, 48, 48, 48
t38: .byte 48, 48, 48, 49, 50
t39: .byte 45, 48
t40: .byte 48, 46, 49
t41: .byte 48, 46, 51, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 52
t42: .byte 49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 48
t43: .byte 49, 101, 52, 48, 48
t44: .byte 45, 49, 101, 52, 48, 48
t45: .byte 53, 101, 45, 51, 50, 52
t46: .byte 52, 46, 57, 101, 45, 51, 50, 53
t47: .byte 49, 46, 55, 57, 55, 54, 57, 51, 49, 51, 52, 56, 54, 50, 51, 49, 53, 55, 101, 51, 48, 56
t48: .byte 57, 48, 48, 55, 49, 57, 57, 50, 53, 52, 55, 52, 48, 57, 57, 51
t49: .byte 48, 46, 48, 48, 48, 48, 48, 49
t50: .byte 49, 101, 50, 49
.bss
buf: .zero 64
.code
main:
    LI r1, t0
    LI r2, 0
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t1
    LI r2, 1
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t2
    LI r2, 1
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t3
    LI r2, 1
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t4
    LI r2, 2
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t5
    LI r2, 2
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t6
    LI r2, 2
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t7
    LI r2, 3
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t8
    LI r2, 2
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t9
    LI r2, 2
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t10
    LI r2, 3
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t11
    LI r2, 4
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t12
    LI r2, 6
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t13
    LI r2, 4
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t14
    LI r2, 3
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t15
    LI r2, 4
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t16
    LI r2, 4
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t17
    LI r2, 5
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t18
    LI r2, 4
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t19
    LI r2, 5
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t20
    LI r2, 8
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t21
    LI r2, 9
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t22
    LI r2, 9
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t23
    LI r2, 8
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t24
    LI r2, 3
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t25
    LI r2, 3
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t26
    LI r2, 4
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t27
    LI r2, 3
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t28
    LI r2, 5
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t29
    LI r2, 2
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t30
    LI r2, 2
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t31
    LI r2, 3
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t32
    LI r2, 1
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t33
    LI r2, 1
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t34
    LI r2, 3
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t35
    LI r2, 2
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t36
    LI r2, 3
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t37
    LI r2, 5
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t38
    LI r2, 5
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t39
    LI r2, 2
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t40
    LI r2, 3
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t41
    LI r2, 19
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t42
    LI r2, 30
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t43
    LI r2, 5
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t44
    LI r2, 6
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t45
    LI r2, 6
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t46
    LI r2, 8
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t47
    LI r2, 22
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t48
    LI r2, 16
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t49
    LI r2, 8
    SYSCALL SYS_PARSENUM
    MOV r2, r0
    LI r1, buf
    LI r3, 1
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, t50
    LI r2, 4
    SYSCALL SYS_PARSENUM
    MOV r2, r0
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
