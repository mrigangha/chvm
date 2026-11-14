; monotonic clock must not go backwards, real clock is after year 2020
.entry main
main:
    LI r1, CLOCK_MONOTONIC
    SYSCALL SYS_TIME
    MOV r8, r0
    LI r1, CLOCK_MONOTONIC
    SYSCALL SYS_TIME
    GE r0, r0, r8
    PRINT r0             ; 1
    LI r1, CLOCK_REALTIME
    SYSCALL SYS_TIME
    LI r2, 1577836800000000000
    GT r0, r0, r2
    PRINT r0             ; 1
    LI r1, 7
    SYSCALL SYS_TIME
    PRINT r0             ; -22
    HALT
