s = 0.0
i = 0.0
while i < 50000000:
    s += i % 7
    i += 1
print(int(s))
