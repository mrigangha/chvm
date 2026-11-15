function sq(x: number): number { return x * x }
function add(a: number, b: number): number { return a + b }
function max2(a: number, b: number): number { return a > b ? a : b }
function clamp(x: number, lo: number, hi: number): number { return x < lo ? lo : x > hi ? hi : x }
function dist2(ax: number, ay: number, bx: number, by: number): number { return sq(ax - bx) + sq(ay - by) }

let total = 0
for (let i = 0; i < 3000000; i++) {
  const x = i % 100
  const y = i % 37
  total = add(total, clamp(dist2(x, y, 50, 18), 0, 1000))
  total = max2(total, 0)
}
console.log(total)
