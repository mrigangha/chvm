; offset 0 holds TRAP so a call through a null function pointer faults
.entry main
    TRAP
main:
    LI r1, 0
    CALLR r1
    HALT
