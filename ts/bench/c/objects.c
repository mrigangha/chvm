#include "rt.h"
typedef struct { double x, y, vx, vy; } Particle;
int main(void) {
    PtrArr ps = {0, 0, 0};
    for (double i = 0; i < 1000; i++) { Particle *p = xmalloc(sizeof *p); p->x = i; p->y = i * 2; p->vx = 1; p->vy = -1; ptr_push(&ps, p); }
    for (double step = 0; step < 2000; step++) {
        for (double i = 0; i < ps.n; i++) {
            check((long)i, ps.n); Particle *p = ps.d[(long)i];
            p->x += p->vx; p->y += p->vy;
            if (p->x > 500) p->vx = -1;
            if (p->x < 0) p->vx = 1;
        }
    }
    double sx = 0, sy = 0;
    for (double i = 0; i < ps.n; i++) { check((long)i, ps.n); Particle *p = ps.d[(long)i]; sx += p->x; sy += p->y; }
    printf("%.0f %.0f\n", sx, sy);
    return 0;
}
