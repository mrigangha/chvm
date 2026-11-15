def steps(n):
    c = 0
    while n != 1:
        if n % 2 == 0:
            n = n // 2
        else:
            n = 3 * n + 1
        c += 1
    return c
best = 0
best_n = 0
for i in range(1, 300000):
    s = steps(i)
    if s > best:
        best = s
        best_n = i
print(best_n, best)
