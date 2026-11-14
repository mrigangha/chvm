#include "rt.h"
static double steps(double n) {
    double c = 0;
    while (n != 1) { if (fmod(n, 2) == 0) n = n / 2; else n = 3 * n + 1; c++; }
    return c;
}
int main(void) {
    double best = 0, bestN = 0;
    for (double i = 1; i < 300000; i++) { double s = steps(i); if (s > best) { best = s; bestN = i; } }
    printf("%.0f %.0f\n", bestN, best);
    return 0;
}
