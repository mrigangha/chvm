#include "rt.h"
static double fib(double n) { if (n < 2) return n; return fib(n - 1) + fib(n - 2); }
int main(void) { printf("%.0f\n", fib(32)); return 0; }
