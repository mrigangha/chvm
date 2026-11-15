.entry main
main:
    ALLOCI r2, 64
    HEAPMARK r1
    ADDI r1, r1, -3
    HEAPFREE r1
    HALT
