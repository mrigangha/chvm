#ifndef CHBC_SYSCALLS_H
#define CHBC_SYSCALLS_H

/*
 * SYSCALL n: arguments in r1..r5, result in r0. Only r0 changes.
 * A negative result is -errno (Linux numbering). An unknown n gives -ENOSYS.
 *
 *   WRITE(fd, buf, len)         bytes written
 *   READ(fd, buf, len)          bytes read, 0 at end of file
 *   OPEN(path, flags, mode)     new fd (3 or more)
 *   CLOSE(fd)                   0 (fds 0, 1 and 2 cannot be closed)
 *   SEEK(fd, offset, whence)    new offset
 *   ARGC()                      number of program arguments, including the program path
 *   ARGV(i, buf, cap)           length of argument i, copied with a NUL into buf
 *   TIME(clock)                 nanoseconds
 *   UNLINK(path)                0
 *   DLOPEN(path)                library handle (1 or more). Path 0 opens the host process itself
 *   DLSYM(handle, name)         function id (1 or more) for CALLX
 *   DLCLOSE(handle)             0
 *   FMTNUM(buf, x, mode)        formats the double x as JavaScript does and returns the length.
 *                               buf needs 32 bytes. Mode 0 is String(x), mode 1 is console.log (-0 stays -0)
 *   PARSENUM(buf, len)          JavaScript Number(text): the double for the len bytes at buf, as raw bits
 *   SPAWN(argv, flags)          runs another program, waits for it, and returns its exit code
 *                               (128 + n if a signal n killed it) or -errno if it could not start.
 *                               argv is an array of string addresses ended by a 0 entry. No shell is used.
 *                               Needs chvm -X, otherwise -EPERM. flags must be 0.
 * The DL calls work only when FFI was compiled in and enabled with -F. They return -EPERM
 * when it is not enabled and -ENOSYS when it was not compiled in.
 */
#define CHBC_SYSCALLS(X) \
    X(WRITE, 1) X(READ, 2) X(OPEN, 3) X(CLOSE, 4) X(SEEK, 5) \
    X(ARGC, 6) X(ARGV, 7) X(TIME, 8) X(UNLINK, 9)            \
    X(DLOPEN, 10) X(DLSYM, 11) X(DLCLOSE, 12) X(FMTNUM, 13) X(PARSENUM, 14) X(SPAWN, 15)

enum {
#define X(name, num) CHBC_SYS_##name = num,
    CHBC_SYSCALLS(X)
#undef X
};

#define CHBC_O_RDONLY 0x00
#define CHBC_O_WRONLY 0x01
#define CHBC_O_RDWR   0x02
#define CHBC_O_CREAT  0x10
#define CHBC_O_TRUNC  0x20
#define CHBC_O_APPEND 0x40

/* Constants the assembler predefines (SYS_<name> comes from CHBC_SYSCALLS). */
#define CHBC_CONSTANTS(X)                                            \
    X("O_RDONLY", CHBC_O_RDONLY) X("O_WRONLY", CHBC_O_WRONLY)        \
    X("O_RDWR", CHBC_O_RDWR) X("O_CREAT", CHBC_O_CREAT)              \
    X("O_TRUNC", CHBC_O_TRUNC) X("O_APPEND", CHBC_O_APPEND)          \
    X("SEEK_SET", 0) X("SEEK_CUR", 1) X("SEEK_END", 2)               \
    X("CLOCK_REALTIME", 0) X("CLOCK_MONOTONIC", 1)                   \
    X("FD_STDIN", 0) X("FD_STDOUT", 1) X("FD_STDERR", 2)

#endif
