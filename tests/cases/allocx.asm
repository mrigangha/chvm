; ALLOC / ALLOCI hand out zeroed, 8-byte aligned, non-overlapping memory and grow the heap on demand
.entry main
main:
    ALLOCI r1, 10          ; rounded up to 16
    ALLOCI r2, 8
    SUB r0, r2, r1
    PRINT r0               ; 16
    LD64 r0, [r1]
    PRINT r0               ; 0 (zeroed)
    LI r3, 24
    ALLOC r4, r3
    SUB r0, r4, r2
    PRINT r0               ; 8
    ANDI r0, r4, 7
    PRINT r0               ; 0 (aligned)
    LI r5, 7777
    ST64 [r4+16], r5
    LD64 r0, [r4+16]
    PRINT r0               ; 7777
    LI r3, 3000000         ; bigger than one 1 MiB step
    ALLOC r6, r3
    SUB r0, r6, r4
    PRINT r0               ; 24
    ST64 [r6+2999992], r5
    LD64 r0, [r6+2999992]
    PRINT r0               ; 7777
    LD64 r0, [r6+1000000]
    PRINT r0               ; 0
    LI r3, 0
    ALLOC r7, r3
    SUB r0, r7, r6
    PRINT r0               ; 3000000 rounded up to a multiple of 8 = 3000000
    LI r8, 0
    SBRK r9, r8            ; the heap break is at or above the allocation pointer
    SLT_: LT r0, r9, r7
    PRINT r0               ; 0
    HALT
