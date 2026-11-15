// loops where the condition is false on entry, has side effects, uses && and ||, and where
// break and continue leave the body in every position
let calls = 0
function check(n: number): boolean { calls++; return n > 0 }
function counted(limit: number): number {
  let i = 0
  while (check(limit - i)) i++
  return i
}
console.log(counted(0), calls, counted(3), calls, counted(5), calls)
let a = 10
while (a < 5) console.log("never")
for (let i = 10; i < 5; i++) console.log("never")
let n = 0
while (n < 20 && n * n < 50) n++
console.log(n)
let m = 0
while (m < 3 || m === 7) m++
console.log(m)
let skipped = 0
let total = 0
for (let i = 0; i < 10; i++) {
  if (i % 2 === 0) continue
  if (i > 7) break
  total += i
  skipped++
}
console.log(total, skipped)
let w = 0
let evens = 0
while (w < 10) {
  w++
  if (w % 2 === 1) continue
  evens += w
}
console.log(w, evens)
let nested = 0
for (let i = 0; i < 4; i++) {
  for (let j = 0; j < i; j++) {
    if (j === 2) break
    nested += i * 10 + j
  }
}
console.log(nested)
let forever = 0
for (;;) {
  forever++
  if (forever === 5) break
}
console.log(forever)
let k = 3
while (k > 0) k -= 5
console.log(k)
const arr: number[] = [5, 3, 8, 1]
let idx = 0
while (idx < arr.length && arr[idx] !== 8) idx++
console.log(idx)
let nanloop = 0
const nan = 0 / 0
while (nan < 1) nanloop++
console.log(nanloop)
for (let i = 0; !(i >= 3); i++) nanloop += 10
console.log(nanloop)
