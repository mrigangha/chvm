; primes up to 5,000,000 in a byte array
.equ N, 5000000
.entry main
.bss
buf: .zero 5000001
.code
main:
    LI r9, N
    LI r10, buf
    LI r5, 1
    LI r1, 2
sloop:
    MUL r2, r1, r1
    BGT r2, r9, count
    ADD r3, r10, r1
    LD8 r4, [r3]
    JNZ r4, snext
inner:
    BGT r2, r9, snext
    ADD r3, r10, r2
    ST8 [r3], r5
    ADD r2, r2, r1
    JMP inner
snext:
    ADDI r1, r1, 1
    JMP sloop
count:
    LI r1, 2
    LI r0, 0
c2:
    BGT r1, r9, out
    ADD r3, r10, r1
    LD8 r4, [r3]
    JNZ r4, c3
    ADDI r0, r0, 1
c3:
    ADDI r1, r1, 1
    JMP c2
out:
    PRINT r0
    HALT
