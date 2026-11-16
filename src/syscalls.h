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
 *   GETENV(name, buf, cap)      length of the environment variable, copied with a NUL into buf.
 *                               -ENOENT if it is not set, -ERANGE if cap is too small
 *   LISTEN(host, port, backlog) a TCP listening socket, as an fd. host 0 is 127.0.0.1 and 1 is 0.0.0.0
 *                               (IPv4 only). port 0 picks a free port. SO_REUSEADDR is set
 *   ACCEPT(fd, wait_ms, io_ms)  waits up to wait_ms (-1 forever, 0 not at all) for a connection and returns its
 *                               fd. -ETIMEDOUT if none came, -EAGAIN if it vanished before it was taken. The new
 *                               socket gives up a READ or WRITE that is stuck for io_ms (0 means never)
 *   POLL(fd, events, wait_ms)   waits for the fd. events and the result are bits: 1 readable, 2 writable,
 *                               4 error or hang-up. 0 is returned when the wait ran out
 *   SHUTDOWN(fd, how)           0 stop reading, 1 stop writing (the peer sees the end), 2 both
 *   SOCKPORT(fd)                the local port of a listening or accepted socket
 * A connected socket is used with READ, WRITE and CLOSE. There is no way to open a connection to another
 * machine: a program can only wait for connections.
 * Processes (lightweight actors, always available, bounded by max_procs and memory limits):
 *   PSPAWN(entry, arg, len, mem, flags)  new process running the function at code offset entry, with r1 = the
 *                               address of a length-prefixed copy of the len bytes at arg. mem is its memory size
 *                               (0 picks a default). flags: 1 fresh image (data only, no copy of the parent's
 *                               globals and heap), 2 link, 4 monitor. flags >> 8 is a descriptor (an accepted
 *                               connection) the new process takes over: the caller must own it. Returns the pid, or -errno
 * A process owns the descriptors it accepts. They are closed when it ends, so a connection cannot leak.
 *   SELF()                      the pid of the caller (the first process is 1)
 *   SEND(pid, tag, addr, len)   copies a message into the mailbox of pid. tag is 0 or more. -ESRCH no such process,
 *                               -EMSGSIZE over 1 MiB, -ENOBUFS the mailbox is full
 *   MSGWAIT(tag, wait_ms)       waits for the first message with this tag (-1 for any, -2 exit signals, -3 monitor
 *                               messages). wait_ms -1 waits for ever.
 *                               Returns its length, or -ETIMEDOUT. The message stays in the mailbox
 *   MSGTAKE(buf, cap)           copies the message MSGWAIT found into buf and removes it. -ERANGE if cap is too small
 *   MSGFROM(), MSGTAG()         the sender pid and the tag of the message MSGWAIT found
 *   PLINK(pid), PUNLINK(pid)      when one of two linked processes dies abnormally the other dies too, unless it
 *                               traps exits, in which case it gets a message with tag -2
 *   MONITOR(pid)                when pid dies the caller gets a message with tag -3. Never kills the caller
 *   TRAPEXIT(flag)              1 turns exit signals from links into messages. Returns the old setting
 *   PKILL(pid)                  ends a process, whatever it is doing. The first process cannot be killed
 *   SLEEP(ms)                   waits. YIELD() lets other processes run. PCOUNT() is the number alive
 *   PINFO(pid, what)            0 alive (0 or 1), 1 messages waiting, 2 bytes in use, 3 memory size
 * A system message (tag -2 or -3) holds the text "kind code pid detail". kind is 0 a normal exit, 1 EXIT with a code,
 * 2 a machine fault (code is its number), 3 an uncaught throw, 4 killed, 6 no such process.
 * The DL calls work only when FFI was compiled in and enabled with -F. They return -EPERM
 * when it is not enabled and -ENOSYS when it was not compiled in.
 * GETENV and the network calls work only with chvm -N, and return -EPERM without it.
 */
#define CHBC_SYSCALLS(X) \
    X(WRITE, 1) X(READ, 2) X(OPEN, 3) X(CLOSE, 4) X(SEEK, 5) \
    X(ARGC, 6) X(ARGV, 7) X(TIME, 8) X(UNLINK, 9)            \
    X(DLOPEN, 10) X(DLSYM, 11) X(DLCLOSE, 12) X(FMTNUM, 13) X(PARSENUM, 14) X(SPAWN, 15) \
    X(GETENV, 16) X(LISTEN, 17) X(ACCEPT, 18) X(POLL, 19) X(SHUTDOWN, 20) X(SOCKPORT, 21) \
    X(PSPAWN, 22) X(SELF, 23) X(SEND, 24) X(MSGWAIT, 25) X(MSGTAKE, 26) X(MSGFROM, 27) X(MSGTAG, 28) \
    X(PLINK, 29) X(PUNLINK, 30) X(MONITOR, 31) X(TRAPEXIT, 32) X(PKILL, 33) X(SLEEP, 34) X(YIELD, 35) \
    X(PCOUNT, 36) X(PINFO, 37)

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
    X("FD_STDIN", 0) X("FD_STDOUT", 1) X("FD_STDERR", 2)             \
    X("LISTEN_LOCAL", 0) X("LISTEN_ANY", 1)                          \
    X("POLL_IN", 1) X("POLL_OUT", 2) X("POLL_ERR", 4)                \
    X("SHUT_RD", 0) X("SHUT_WR", 1) X("SHUT_RDWR", 2)                \
    X("SPAWN_FRESH", 1) X("SPAWN_LINK", 2) X("SPAWN_MONITOR", 4)     \
    X("TAG_ANY", -1) X("TAG_EXIT", -2) X("TAG_DOWN", -3)

#endif
