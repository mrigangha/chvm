parts = ["item" + str(i) for i in range(200000)]
joined = ",".join(parts)
print(len(joined))
count = 0
for ch in joined:
    if ch == ",":
        count += 1
print(count)
s = ""
for i in range(3000):
    s += "x" + str(i)
print(len(s))
