; APUSH appends while there is room and reports whether it did. APOP removes the last element.
.entry main
.data
hdr:   .word 0, 2, buf
buf:   .word 0, 0
.code
main:
    LI r1, hdr
    LI r5, 11
    APUSH r2, r1, r5
    PRINT r2               ; 1
    LI r5, 22
    APUSH r2, r1, r5
    PRINT r2               ; 1
    LI r5, 33
    APUSH r2, r1, r5
    PRINT r2               ; 0: full, nothing changed
    LD64 r0, [r1]
    PRINT r0               ; 2
    APOP r3, r1
    PRINT r3               ; 22
    APOP r3, r1
    PRINT r3               ; 11
    LD64 r0, [r1]
    PRINT r0               ; 0
    APOP r3, r1
    HALT
