n = 5000000
flags = [True] * (n + 1)
flags[0] = False
flags[1] = False
i = 2
while i * i <= n:
    if flags[i]:
        for j in range(i * i, n + 1, i):
            flags[j] = False
    i += 1
print(sum(1 for f in flags if f))
