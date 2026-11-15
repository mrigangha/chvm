; marks nest: a release to the inner mark leaves the outer allocation alone
.entry main
main:
    HEAPMARK r1
    ALLOCI r2, 16
    LI r5, 5
    ST64 [r2], r5
    HEAPMARK r3
    ALLOCI r4, 16
    LI r5, 9
    ST64 [r4], r5
    HEAPFREE r3
    LD64 r0, [r2]
    PRINT r0                ; 5
    LD64 r0, [r4]
    PRINT r0                ; 0: released and zeroed
    HEAPFREE r1
    LD64 r0, [r2]
    PRINT r0                ; 0
    HEAPMARK r6
    SUB r0, r6, r1
    PRINT r0                ; 0: back at the very start
    HALT
