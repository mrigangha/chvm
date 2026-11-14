#include "rt.h"
int main(void) {
    double n = 120;
    PtrArr a = {0, 0, 0}, b = {0, 0, 0}, c = {0, 0, 0};
    for (double i = 0; i < n; i++) {
        NumArr *ra = xmalloc(sizeof *ra), *rb = xmalloc(sizeof *rb), *rc = xmalloc(sizeof *rc);
        memset(ra, 0, sizeof *ra); memset(rb, 0, sizeof *rb); memset(rc, 0, sizeof *rc);
        for (double j = 0; j < n; j++) { num_push(ra, i + j); num_push(rb, i - j); num_push(rc, 0); }
        ptr_push(&a, ra); ptr_push(&b, rb); ptr_push(&c, rc);
    }
    for (double i = 0; i < n; i++) for (double j = 0; j < n; j++) {
        double s = 0;
        for (double k = 0; k < n; k++) {
            check((long)i, a.n); NumArr *ar = a.d[(long)i]; check((long)k, ar->n);
            check((long)k, b.n); NumArr *br = b.d[(long)k]; check((long)j, br->n);
            s += ar->d[(long)k] * br->d[(long)j];
        }
        check((long)i, c.n); NumArr *cr = c.d[(long)i]; check((long)j, cr->n); cr->d[(long)j] = s;
    }
    NumArr *c0 = c.d[0], *cl = c.d[119], *c10 = c.d[10];
    printf("%.0f %.0f %.0f\n", c0->d[0], cl->d[119], c10->d[20]);
    return 0;
}
