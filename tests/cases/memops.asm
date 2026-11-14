.entry main
.data
src:  .ascii "abcdefghij"
      .align 8
.bss
dst:  .zero 32
.code
main:
    LI r1, dst
    LI r2, src
    LI r3, 10
    MEMCPY r1, r2, r3
    LD8 r0, [r1]
    PRINT r0              ; 97
    LD8 r0, [r1+9]
    PRINT r0              ; 106
    LD8 r0, [r1+10]
    PRINT r0              ; 0

    ; overlapping copy forward: memmove semantics
    LI r1, dst
    ADDI r4, r1, 2
    LI r3, 8
    MEMCPY r4, r1, r3
    LD8 r0, [r1+2]
    PRINT r0              ; 97
    LD8 r0, [r1+9]
    PRINT r0              ; 104 (the old [7])
    ; overlapping copy backward
    ADDI r4, r1, 2
    LI r3, 4
    MEMCPY r1, r4, r3
    LD8 r0, [r1]
    PRINT r0              ; 97

    ; memset
    LI r5, 0x1ff
    LI r3, 5
    ADDI r4, r1, 16
    MEMSET r4, r5, r3
    LD8 r0, [r1+16]
    PRINT r0              ; 255: only the low byte is used
    LD8 r0, [r1+20]
    PRINT r0              ; 255
    LD8 r0, [r1+21]
    PRINT r0              ; 0

    ; memcmp
    LI r1, src
    LI r2, src
    LI r3, 10
    MEMCMP r0, r1, r2, r3
    PRINT r0              ; 0
    ADDI r2, r1, 1
    LI r3, 3
    MEMCMP r0, r1, r2, r3
    PRINT r0              ; -1: 'a' < 'b'
    MEMCMP r0, r2, r1, r3
    PRINT r0              ; 1
    LI r3, 0
    MEMCMP r0, r1, r2, r3
    PRINT r0              ; 0: empty compare

    ; zero length at any address is fine, even null
    LI r1, 0
    LI r3, 0
    MEMCPY r1, r1, r3
    MEMSET r1, r1, r3
    LI r0, 7
    PRINT r0
    HALT
