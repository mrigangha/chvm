#include "sys.h"

#include <errno.h>
#include <fcntl.h>
#include <limits.h>
#include <math.h>
#include <stdlib.h>
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

/*
 * JavaScript Number::toString(10): the shortest digits that read back exactly,
 * written in plain or exponent form by the same rules as the language.
 * out needs 32 bytes. Returns the length.
 */
static int fmt_js_number(double d, int inspect, char *out)
{
    char tmp[40], digits[24];
    int n = 0, nd = 0, e10;

    if (d != d)
        return snprintf(out, 32, "NaN");
    if (d == 0)
        return snprintf(out, 32, "%s", inspect && signbit(d) ? "-0" : "0");
    if (d < 0) {
        out[n++] = '-';
        d = -d;
    }
    if (isinf(d))
        return n + snprintf(out + n, 32 - n, "Infinity");

    for (int p = 1; p <= 17; p++) {
        snprintf(tmp, sizeof tmp, "%.*e", p - 1, d);
        if (strtod(tmp, NULL) == d)
            break;
    }
    /* tmp looks like d.ddde+XX or de+XX */
    char *ep = strchr(tmp, 'e');
    e10 = atoi(ep + 1);
    for (char *q = tmp; q < ep; q++)
        if (*q >= '0' && *q <= '9')
            digits[nd++] = *q;
    while (nd > 1 && digits[nd - 1] == '0')
        nd--;

    int k = nd, pt = e10 + 1;   /* value = 0.digits * 10^pt */
    if (k <= pt && pt <= 21) {
        memcpy(out + n, digits, (size_t)k);
        n += k;
        for (int i = 0; i < pt - k; i++)
            out[n++] = '0';
    } else if (0 < pt && pt <= 21) {
        memcpy(out + n, digits, (size_t)pt);
        n += pt;
        out[n++] = '.';
        memcpy(out + n, digits + pt, (size_t)(k - pt));
        n += k - pt;
    } else if (-6 < pt && pt <= 0) {
        out[n++] = '0';
        out[n++] = '.';
        for (int i = 0; i < -pt; i++)
            out[n++] = '0';
        memcpy(out + n, digits, (size_t)k);
        n += k;
    } else {
        int e = pt - 1;
        out[n++] = digits[0];
        if (k > 1) {
            out[n++] = '.';
            memcpy(out + n, digits + 1, (size_t)(k - 1));
            n += k - 1;
        }
        n += snprintf(out + n, 32 - n, "e%c%d", e < 0 ? '-' : '+', e < 0 ? -e : e);
    }
    return n;
}

static int64_t sys_fmtnum(const vm_sysenv *e, const vm_value *a)
{
    char out[40];
    if (!range_ok(e, a[0].u, 32))
        return -EFAULT;
    int n = fmt_js_number(a[1].f, a[2].u == 1, out);
    memcpy(e->mem + a[0].u, out, (size_t)n);
    return n;
}

/*
 * JavaScript Number(text): blanks around the text are ignored, empty text is 0,
 * "Infinity" and hex are accepted, anything else that is not a full decimal number is NaN.
 */
static double parse_js_number(const char *s, size_t n)
{
    char tmp[128];
    while (n && (*s == ' ' || *s == '\t' || *s == '\n' || *s == '\r')) {
        s++;
        n--;
    }
    while (n && (s[n - 1] == ' ' || s[n - 1] == '\t' || s[n - 1] == '\n' || s[n - 1] == '\r'))
        n--;
    if (n == 0)
        return 0;
    if (n >= sizeof tmp)
        return NAN;
    memcpy(tmp, s, n);
    tmp[n] = 0;

    const char *p = tmp;
    int neg = 0;
    if (*p == '+' || *p == '-')
        neg = *p++ == '-';
    if (!strcmp(p, "Infinity"))
        return neg ? -INFINITY : INFINITY;
    if (p[0] == '0' && (p[1] == 'x' || p[1] == 'X' || p[1] == 'b' || p[1] == 'B' || p[1] == 'o' || p[1] == 'O')) {
        if (p != tmp)
            return NAN;   /* a sign is not allowed in front of 0x */
        int base = (p[1] == 'x' || p[1] == 'X') ? 16 : (p[1] == 'b' || p[1] == 'B') ? 2 : 8;
        if (!p[2])
            return NAN;
        double v = 0;
        for (const char *q = p + 2; *q; q++) {
            int d = (*q >= '0' && *q <= '9') ? *q - '0' : (*q >= 'a' && *q <= 'f') ? *q - 'a' + 10
                  : (*q >= 'A' && *q <= 'F') ? *q - 'A' + 10 : 99;
            if (d >= base)
                return NAN;
            v = v * base + d;
        }
        return v;
    }
    /* decimal only: digits, one dot, an exponent. strtod would also accept nan, inf and hex. */
    const char *q = p;
    int digits = 0;
    while (*q >= '0' && *q <= '9') { q++; digits++; }
    if (*q == '.') {
        q++;
        while (*q >= '0' && *q <= '9') { q++; digits++; }
    }
    if (!digits)
        return NAN;
    if (*q == 'e' || *q == 'E') {
        q++;
        if (*q == '+' || *q == '-')
            q++;
        if (!(*q >= '0' && *q <= '9'))
            return NAN;
        while (*q >= '0' && *q <= '9')
            q++;
    }
    if (*q)
        return NAN;
    double v = strtod(p, NULL);
    return neg ? -v : v;
}

static int64_t sys_parsenum(const vm_sysenv *e, const vm_value *a)
{
    if (!range_ok(e, a[0].u, a[1].u))
        return -EFAULT;
    double d = parse_js_number((const char *)e->mem + a[0].u, (size_t)a[1].u);
    int64_t bits;
    memcpy(&bits, &d, 8);
    return bits;
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
    case CHBC_SYS_FMTNUM: return sys_fmtnum(e, a);
    case CHBC_SYS_PARSENUM: return sys_parsenum(e, a);
    case CHBC_SYS_DLOPEN: return sys_dlopen(e, a);
    case CHBC_SYS_DLSYM:  return sys_dlsym(e, a);
    case CHBC_SYS_DLCLOSE: return sys_dlclose(e, a);
    }
    return -ENOSYS;
}
