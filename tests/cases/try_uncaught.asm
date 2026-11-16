; a throw with no TRY ends the program and prints the thrown string
.entry main
.data
s_msg: .word 15
       .byte 98, 111, 111, 109, 32, 119, 105, 116, 104, 32, 116, 97, 98, 9, 33, 0
.code
main:
    LI r5, 1
    PRINT r5
    LI r2, s_msg
    THROW r2
    LI r5, 2
    PRINT r5
    HALT
