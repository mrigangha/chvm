; a throw does not free heap memory by itself: the program marks and frees, like arenaMark and arenaFree
.entry main
.data
s_msg: .word 1
       .byte 120, 0, 0, 0, 0, 0, 0, 0
.code
main:
    HEAPMARK r9
    TRY c
    ALLOCI r2, 4096
    LI r3, 55
    ST64 [r2], r3
    LI r4, s_msg
    THROW r4
c:
    LD64 r5, [r2]
    PRINT r5               ; 55: the memory is still there
    HEAPFREE r9            ; the program frees it
    HEAPMARK r6
    SUB r7, r6, r9
    PRINT r7               ; 0: back to the mark
    HALT
