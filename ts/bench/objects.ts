interface Particle { x: number; y: number; vx: number; vy: number }
const ps: Particle[] = []
for (let i = 0; i < 1000; i++) ps.push({ x: i, y: i * 2, vx: 1, vy: -1 })
for (let step = 0; step < 2000; step++) {
  for (let i = 0; i < ps.length; i++) {
    const p = ps[i]
    p.x += p.vx
    p.y += p.vy
    if (p.x > 500) p.vx = -1
    if (p.x < 0) p.vx = 1
  }
}
let sx = 0
let sy = 0
for (let i = 0; i < ps.length; i++) {
  sx += ps[i].x
  sy += ps[i].y
}
console.log(sx, sy)
