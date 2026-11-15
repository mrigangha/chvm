n = 120
a = [[i + j for j in range(n)] for i in range(n)]
b = [[i - j for j in range(n)] for i in range(n)]
c = [[0] * n for _ in range(n)]
for i in range(n):
    for j in range(n):
        s = 0
        for k in range(n):
            s += a[i][k] * b[k][j]
        c[i][j] = s
print(c[0][0], c[n - 1][n - 1], c[10][20])
