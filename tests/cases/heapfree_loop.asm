; a million allocate-and-release rounds use no more memory than one
.entry main
main:
    HEAPMARK r9
    LI r8, 0
loop:
    ALLOCI r1, 4096
    LI r2, 7
    ST64 [r1+4088], r2
    HEAPFREE r9
    ADDI r8, r8, 1
    BLTI r8, 20000, loop
    HEAPMARK r6
    SUB r0, r6, r9
    PRINT r0                ; 0
    HALT
