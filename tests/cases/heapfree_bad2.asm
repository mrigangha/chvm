; an address below the heap start is refused
.entry main
main:
    LI r1, 4088
    HEAPFREE r1
    HALT
