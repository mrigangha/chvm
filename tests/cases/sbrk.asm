; SBRK(0) is the break, growing returns the old break, new memory is zero, shrink works
    LI r1, 0
    SBRK r2, r1          ; r2 = break
    LI r3, 4096
    SBRK r4, r3          ; grow 4096
    SUB r0, r4, r2
    PRINT r0             ; 0: returned the old break
    SBRK r5, r1
    SUB r0, r5, r2
    PRINT r0             ; 4096
    LD64 r0, [r2]
    PRINT r0             ; 0: zeroed
    LI r6, 99
    ST64 [r2+4088], r6
    LD64 r0, [r2+4088]
    PRINT r0             ; 99: last word is usable
    LI r3, -4096
    SBRK r4, r3          ; shrink back
    SBRK r5, r1
    SUB r0, r5, r2
    PRINT r0             ; 0
    LI r3, 8
    SBRK r4, r3          ; grow again over the old 99
    LD64 r0, [r2]
    PRINT r0             ; 0 (zeroed again)
    LI r3, -4096
    SBRK r4, r3          ; below the heap base
    PRINT r4             ; -1
    HALT
