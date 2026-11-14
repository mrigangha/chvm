.entry main
double:
    ADD r0, r1, r1
    RET
main:
    LI r5, double
    LI r1, 21
    CALLR r5
    PRINT r0
    HALT
