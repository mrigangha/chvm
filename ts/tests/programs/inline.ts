// small pure functions that are replaced by their bodies, and the cases where that must not happen

function add(a: number, b: number): number { return a + b }
function sq(x: number): number { return x * x }
function half(x: number): number { return x / 2 }
function max2(a: number, b: number): number { return a > b ? a : b }
function inRange(x: number, lo: number, hi: number): boolean { return x >= lo && x <= hi }
function twiceUse(x: number): number { return x * x + x }
function onlyIf(c: boolean, x: number): number { return c ? x : 0 }
function lenOf(a: number[]): number { return a.length }
function first(a: number[]): number { return a[0] }
function at(a: number[], i: number): number { return a[i] }
function sqrtSum(a: number, b: number): number { return Math.sqrt(a * a + b * b) }
function neg(x: number): number { return -x }
function isEven(n: number): boolean { return n % 2 === 0 }

// ---- straightforward
console.log(add(1, 2), sq(7), half(9), max2(3, 8), max2(8, 3), neg(5), sqrtSum(3, 4))
console.log(inRange(5, 1, 10), inRange(0, 1, 10), inRange(11, 1, 10), isEven(4), isEven(7))

// ---- arguments that are expressions, used once
let k = 3
console.log(add(k * 2, k + 1), sq(k + 1), half(k * k), max2(k * 2, k + 10))

// ---- a parameter used twice with a variable argument, and with an expression argument
console.log(twiceUse(k), twiceUse(k + 1), twiceUse(4))

// ---- argument order and parameter names that differ from the caller's variables
function sub(a: number, b: number): number { return a - b }
let a = 10
let b = 3
console.log(sub(a, b), sub(b, a), sub(a - 1, b + 1), sub(b, b))

// ---- the caller has locals whose slots would collide with the callee's parameter slots
function mixed(p: number, q: number): number {
  let r = p * 10
  let s = q * 100
  let t = add(r, s) + sq(p) + max2(q, p)
  let u = sub(t, r)
  return u + add(s, sq(q))
}
console.log(mixed(2, 3), mixed(5, 1), mixed(0, 0))

// ---- an argument with a side effect, used once: it must run exactly once and in order
let log = ""
let n = 0
function next(): number { n++; log += n + ","; return n }
console.log(add(next(), next()), sub(next(), next()), log)

// ---- a side-effecting argument where the parameter is used twice: not inlined, so run once
console.log(twiceUse(next()), n)
// ---- a side-effecting argument where the parameter is used on a conditional path: not inlined
console.log(onlyIf(true, next()), onlyIf(false, next()), n)

// ---- reads that can fault are still evaluated at the call, in order
const arr: number[] = [4, 5, 6]
console.log(first(arr), at(arr, 2), lenOf(arr), at(arr, 1) + first(arr))

// ---- nested inlined calls
console.log(add(sq(add(1, 2)), half(add(5, 5))), max2(sq(3), sq(2) + 6))

// ---- use inside a loop and a condition
let total = 0
for (let i = 0; i < 6; i++) {
  if (isEven(i)) total += sq(i)
  else total += half(i)
}
console.log(total)
while (inRange(k, 0, 5)) k = add(k, 1)
console.log(k)

// ---- an out-of-range read inside an inlined function must stop the program at the call
console.log("before")
console.log(at(arr, 9))
console.log("after")
