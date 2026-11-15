; a mark from the future (beyond the allocation point) is refused
.entry main
main:
    HEAPMARK r1
    ADDI r1, r1, 64
    HEAPFREE r1
    HALT
