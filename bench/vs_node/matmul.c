#include <stdio.h>
#define N 120
static double a[N*N], b[N*N], c[N*N];
int main(void) {
    for (int i = 0; i < N; i++) for (int j = 0; j < N; j++) { a[i*N+j] = i + j; b[i*N+j] = i - j; }
    for (int i = 0; i < N; i++) for (int j = 0; j < N; j++) { double s = 0; for (int k = 0; k < N; k++) s += a[i*N+k] * b[k*N+j]; c[i*N+j] = s; }
    printf("%.0f\n%.0f\n%.0f\n", c[0], c[119*N+119], c[10*N+20]); return 0;
}
