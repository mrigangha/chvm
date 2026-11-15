// comparisons with constants too big for a 16-bit immediate, in every operator and branch position
function cmp(x: number): number {
  let r = 0
  if (x < 50000) r += 1
  if (x <= 50000) r += 2
  if (x > 50000) r += 4
  if (x >= 50000) r += 8
  if (x === 50000) r += 16
  if (x !== 50000) r += 32
  if (!(x < 50000)) r += 64
  if (!(x > 50000)) r += 128
  return r
}
console.log(cmp(49999), cmp(50000), cmp(50001), cmp(-50000), cmp(0 / 0), cmp(1 / 0), cmp(-1 / 0))
function neg(x: number): number {
  let r = 0
  if (x < -50000) r += 1
  if (x >= -50000) r += 2
  if (x === -2147483648) r += 4
  if (x > 2147483647) r += 8
  if (x <= 2147483647) r += 16
  return r
}
console.log(neg(-50001), neg(-50000), neg(-2147483648), neg(2147483648), neg(2147483647), neg(0 / 0))
// as loop bounds, and with && || mixed with ordinary comparisons
let count = 0
for (let i = 0; i < 100000; i += 7) count++
console.log(count)
let k = 0
while (k < 70000 && k !== 12345) k += 5
console.log(k)
let m = 100000
while (m > 66000 || m === 3) m -= 1000
console.log(m)
// a constant beyond 32 bits still works, through a register
let big = 0
for (let i = 0; i < 6000000000; i += 1500000000) big++
console.log(big)
// a fractional constant still works too
let frac = 0
for (let x = 0; x < 50000.5; x += 12500) frac++
console.log(frac)
