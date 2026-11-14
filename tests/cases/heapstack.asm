; growing the heap must leave room for the stack, and the stack must not run into the heap
.entry main
f:  CALL f
    RET
main:
    LI r1, 0
    SBRK r2, r1
    LI r3, 0x400000
    SBRK r4, r3
    CALL f
    HALT
