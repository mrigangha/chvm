#include "rt.h"
static Str str_of(const char *s, long n) { Str r; r.len = n; r.s = xmalloc((size_t)n + 1); memcpy(r.s, s, (size_t)n); r.s[n] = 0; return r; }
static Str str_cat(Str a, Str b) { Str r; r.len = a.len + b.len; r.s = xmalloc((size_t)r.len + 1); memcpy(r.s, a.s, (size_t)a.len); memcpy(r.s + a.len, b.s, (size_t)b.len); r.s[r.len] = 0; return r; }
static Str num_str(double v) { char b[32]; int n = snprintf(b, sizeof b, "%.0f", v); return str_of(b, n); }
int main(void) {
    struct { long n, cap; Str *d; } parts = {0, 0, 0};
    for (double i = 0; i < 200000; i++) {
        Str s = str_cat(str_of("item", 4), num_str(i));
        if (parts.n == parts.cap) { parts.cap = parts.cap ? parts.cap * 2 : 4; parts.d = realloc(parts.d, (size_t)parts.cap * sizeof(Str)); }
        parts.d[parts.n++] = s;
    }
    long total = 0;
    for (long i = 0; i < parts.n; i++) total += parts.d[i].len + (i > 0 ? 1 : 0);
    Str joined; joined.len = total; joined.s = xmalloc((size_t)total + 1);
    char *at = joined.s;
    for (long i = 0; i < parts.n; i++) { if (i > 0) *at++ = ','; memcpy(at, parts.d[i].s, (size_t)parts.d[i].len); at += parts.d[i].len; }
    printf("%ld\n", joined.len);
    double count = 0;
    for (double i = 0; i < joined.len; i++) { check((long)i, joined.len); if (joined.s[(long)i] == 44) count++; }
    printf("%.0f\n", count);
    Str s = str_of("", 0);
    for (double i = 0; i < 3000; i++) s = str_cat(s, str_cat(str_of("x", 1), num_str(i)));
    printf("%ld\n", s.len);
    return 0;
}
