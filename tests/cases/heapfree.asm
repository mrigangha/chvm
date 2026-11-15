; HEAPMARK saves the allocation point, HEAPFREE rewinds to it and zeroes what was released
.entry main
main:
    ALLOCI r1, 16
    LI r2, 111
    ST64 [r1], r2
    HEAPMARK r5
    ALLOCI r3, 24
    LI r2, 222
    ST64 [r3], r2
    ST64 [r3+16], r2
    ALLOCI r4, 8
    HEAPFREE r5
    ALLOCI r6, 24           ; the same address as r3, and zeroed
    SUB r0, r6, r3
    PRINT r0                ; 0
    LD64 r0, [r6]
    PRINT r0                ; 0
    LD64 r0, [r6+16]
    PRINT r0                ; 0
    LD64 r0, [r1]
    PRINT r0                ; 111: before the mark, kept
    ALLOCI r7, 8
    SUB r0, r7, r4          ; r7 reuses the place after the 24 bytes, so r4 and r7 match
    PRINT r0                ; 0
    HEAPFREE r5             ; freeing again to the same mark is fine
    ALLOCI r6, 8
    SUB r0, r6, r3
    PRINT r0                ; 0
    HALT
