    LI r1, 0x1ff
    SEXT8 r0, r1
    PRINT r0
    LI r1, 0x18000
    SEXT16 r0, r1
    PRINT r0
    LI r1, 0x180000000
    SEXT32 r0, r1
    PRINT r0
    LI r1, -1
    ZEXT32 r0, r1
    PRINT r0
    HALT
