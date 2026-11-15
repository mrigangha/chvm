class P:
    __slots__ = ("x", "y", "vx", "vy")
    def __init__(self, x, y, vx, vy):
        self.x = x; self.y = y; self.vx = vx; self.vy = vy
ps = [P(i, i * 2, 1, -1) for i in range(1000)]
for step in range(2000):
    for p in ps:
        p.x += p.vx
        p.y += p.vy
        if p.x > 500:
            p.vx = -1
        if p.x < 0:
            p.vx = 1
print(sum(p.x for p in ps), sum(p.y for p in ps))
