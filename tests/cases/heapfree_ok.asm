; freeing to the heap start itself is allowed, and it is where HEAPMARK starts
.entry main
main:
    LI r1, 4096
    HEAPFREE r1
    HEAPMARK r2
    PRINT r2
    HALT
