#include <ctype.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int add_i(int a, int b) { return a + b; }
unsigned int mul_u(unsigned int a, unsigned int b) { return a * b; }
int64_t big(int64_t a, int64_t b) { return a * 1000 + b; }
double hyp2(double a, double b) { return a * a + b * b; }
float halve(float a) { return a / 2.0f; }
/* mixed int, double, float, pointer arguments */
double mixed(int a, double b, float c, int64_t d, double e)
{
    return a + b + c + (double)d + e;
}
/* more arguments than fit in registers: 8 ints and 8 doubles */
double many(int a, int b, int c, int d, int e, int f, int g, int h,
            double i, double j, double k, double l, double m, double n, double o, double p)
{
    return a + 2 * b + 3 * c + 4 * d + 5 * e + 6 * f + 7 * g + 8 * h +
           i + 2 * j + 3 * k + 4 * l + 5 * m + 6 * n + 7 * o + 8 * p;
}
void fill(unsigned char *buf, int n, int v) { memset(buf, v, (size_t)n); }
int sum_bytes(const unsigned char *buf, int n)
{
    int s = 0;
    for (int i = 0; i < n; i++)
        s += buf[i];
    return s;
}
int64_t str_len(const char *s) { return (int64_t)strlen(s); }
void upcase(char *s) { for (; *s; s++) *s = (char)toupper((unsigned char)*s); }
int is_null(const void *p) { return p == NULL; }
/* returns a pointer into the buffer it was given */
char *find_char(char *s, int c) { return strchr(s, c); }
/* returns a pointer that is NOT in guest memory */
const char *static_text(void) { return "native text"; }
int64_t handle_new(int64_t v) { int64_t *p = malloc(sizeof *p); *p = v; return (int64_t)(intptr_t)p; }
int64_t handle_get(int64_t h) { return *(int64_t *)(intptr_t)h; }
void handle_free(int64_t h) { free((void *)(intptr_t)h); }
int fmt_int(char *out, int cap, int v) { return snprintf(out, (size_t)cap, "<%d>", v); }
/* variadic: sum of n ints, then a double */
double vsum(int n, ...)
{
    va_list ap;
    va_start(ap, n);
    double s = 0;
    for (int i = 0; i < n; i++)
        s += va_arg(ap, int);
    s += va_arg(ap, double);
    va_end(ap);
    return s;
}
int counter;
int next_count(void) { return ++counter; }
