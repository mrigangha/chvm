#include "sys.h"

#include <errno.h>
#include <fcntl.h>
#include <limits.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <unistd.h>

#include "syscalls.h"

#define PATH_LIMIT 4096

static int range_ok(const vm_sysenv *e, uint64_t addr, uint64_t len)
{
    if (len == 0)
        return 1;
    return addr >= CHBC_NULL_PAGE && addr <= e->mem_size && len <= e->mem_size - addr;
}

/* Copies a NUL-terminated string out of VM memory. Returns 0 or -errno. */
static int get_path(const vm_sysenv *e, uint64_t addr, char *out)
{
    if (addr < CHBC_NULL_PAGE || addr >= e->mem_size)
        return -EFAULT;
    uint64_t room = e->mem_size - addr;
    if (room > PATH_LIMIT)
        room = PATH_LIMIT;
    const uint8_t *p = e->mem + addr;
    const uint8_t *z = memchr(p, 0, room);
    if (!z)
        return room == PATH_LIMIT ? -ENAMETOOLONG : -EFAULT;
    memcpy(out, p, (size_t)(z - p) + 1);
    return 0;
}

static int valid_fd(int64_t fd)
{
    return fd >= 0 && fd <= INT_MAX;
}

static int64_t sys_write(const vm_sysenv *e, const vm_value *a)
{
    int64_t fd = a[0].i;
    uint64_t p = a[1].u, n = a[2].u;
    if (!range_ok(e, p, n))
        return -EFAULT;
    if (fd == 1) {
        size_t w = n ? fwrite(e->mem + p, 1, (size_t)n, stdout) : 0;
        return w == n ? (int64_t)n : -EIO;
    }
    if (!valid_fd(fd))
        return -EBADF;
    if (fd == 2)
        fflush(stdout);
    ssize_t w = write((int)fd, e->mem + p, (size_t)n);
    return w < 0 ? -errno : (int64_t)w;
}

static int64_t sys_read(const vm_sysenv *e, const vm_value *a)
{
    int64_t fd = a[0].i;
    uint64_t p = a[1].u, n = a[2].u;
    if (!range_ok(e, p, n))
        return -EFAULT;
    if (!valid_fd(fd))
        return -EBADF;
    if (fd == 0)
        fflush(stdout);
    ssize_t r = read((int)fd, e->mem + p, (size_t)n);
    return r < 0 ? -errno : (int64_t)r;
}

static int64_t sys_open(const vm_sysenv *e, const vm_value *a)
{
    char path[PATH_LIMIT];
    uint64_t f = a[1].u;
    int rc = get_path(e, a[0].u, path);
    if (rc)
        return rc;
    if ((f & ~(uint64_t)(3 | CHBC_O_CREAT | CHBC_O_TRUNC | CHBC_O_APPEND)) || (f & 3) == 3)
        return -EINVAL;

    int h = (f & 3) == CHBC_O_RDONLY ? O_RDONLY : (f & 3) == CHBC_O_WRONLY ? O_WRONLY : O_RDWR;
    if (f & CHBC_O_CREAT)
        h |= O_CREAT;
    if (f & CHBC_O_TRUNC)
        h |= O_TRUNC;
    if (f & CHBC_O_APPEND)
        h |= O_APPEND;
    int fd = open(path, h | O_CLOEXEC, (mode_t)(a[2].u & 07777));
    return fd < 0 ? -errno : fd;
}

static int64_t sys_close(const vm_value *a)
{
    int64_t fd = a[0].i;
    if (fd < 3 || !valid_fd(fd))
        return -EBADF;
    return close((int)fd) < 0 ? -errno : 0;
}

static int64_t sys_seek(const vm_value *a)
{
    int64_t fd = a[0].i;
    static const int whence[] = {SEEK_SET, SEEK_CUR, SEEK_END};
    if (!valid_fd(fd))
        return -EBADF;
    if (a[2].u > 2)
        return -EINVAL;
    off_t o = lseek((int)fd, (off_t)a[1].i, whence[a[2].u]);
    return o < 0 ? -errno : (int64_t)o;
}

static int64_t sys_argv(const vm_sysenv *e, const vm_value *a)
{
    if (a[0].u >= (uint64_t)(e->argc > 0 ? e->argc : 0))
        return -EINVAL;
    const char *s = e->argv[a[0].u];
    uint64_t len = strlen(s);
    if (a[2].u < len + 1)
        return -ERANGE;
    if (!range_ok(e, a[1].u, len + 1))
        return -EFAULT;
    memcpy(e->mem + a[1].u, s, (size_t)len + 1);
    return (int64_t)len;
}

static int64_t sys_time(const vm_value *a)
{
    struct timespec ts;
    if (a[0].u > 1)
        return -EINVAL;
    if (clock_gettime(a[0].u ? CLOCK_MONOTONIC : CLOCK_REALTIME, &ts) < 0)
        return -errno;
    return (int64_t)ts.tv_sec * 1000000000 + ts.tv_nsec;
}

static int64_t sys_unlink(const vm_sysenv *e, const vm_value *a)
{
    char path[PATH_LIMIT];
    int rc = get_path(e, a[0].u, path);
    if (rc)
        return rc;
    return unlink(path) < 0 ? -errno : 0;
}

static int64_t sys_dlopen(const vm_sysenv *e, const vm_value *a)
{
    if (!e->foreign)
        return foreign_compiled() ? -EPERM : -ENOSYS;
    if (a[0].u == 0)
        return foreign_open(e->foreign, NULL);
    char path[PATH_LIMIT];
    int rc = get_path(e, a[0].u, path);
    if (rc)
        return rc;
    return foreign_open(e->foreign, path);
}

static int64_t sys_dlsym(const vm_sysenv *e, const vm_value *a)
{
    if (!e->foreign)
        return foreign_compiled() ? -EPERM : -ENOSYS;
    char name[256];
    int rc = get_path(e, a[1].u, name);
    if (rc)
        return rc;
    return foreign_sym(e->foreign, a[0].i, name);
}

static int64_t sys_dlclose(const vm_sysenv *e, const vm_value *a)
{
    if (!e->foreign)
        return foreign_compiled() ? -EPERM : -ENOSYS;
    return foreign_close(e->foreign, a[0].i);
}

int64_t vm_syscall(const vm_sysenv *e, uint32_t num, const vm_value *a)
{
    switch (num) {
    case CHBC_SYS_WRITE:  return sys_write(e, a);
    case CHBC_SYS_READ:   return sys_read(e, a);
    case CHBC_SYS_OPEN:   return sys_open(e, a);
    case CHBC_SYS_CLOSE:  return sys_close(a);
    case CHBC_SYS_SEEK:   return sys_seek(a);
    case CHBC_SYS_ARGC:   return e->argc;
    case CHBC_SYS_ARGV:   return sys_argv(e, a);
    case CHBC_SYS_TIME:   return sys_time(a);
    case CHBC_SYS_UNLINK: return sys_unlink(e, a);
    case CHBC_SYS_DLOPEN: return sys_dlopen(e, a);
    case CHBC_SYS_DLSYM:  return sys_dlsym(e, a);
    case CHBC_SYS_DLCLOSE: return sys_dlclose(e, a);
    }
    return -ENOSYS;
}
