// functions that start with `if (test) return value`, which return before the prologue
function fib(n: number): number {
  if (n < 2) return n
  return fib(n - 1) + fib(n - 2)
}
console.log(fib(0), fib(1), fib(2), fib(10), fib(20))

function sign(n: number): number {
  if (n === 0) return 0
  if (n < 0) return -1
  return 1
}
console.log(sign(0), sign(-5), sign(5))

// the test and the value use several parameters, in a different order from the declaration
function pick(a: number, b: number, c: number): number {
  if (c > a && b !== 0) return b * 10 + a - c
  return a + b + c
}
console.log(pick(1, 2, 3), pick(5, 2, 3), pick(5, 0, 3), pick(-1, 7, -9))

// the test fails and the rest of the body uses the same parameters and a local that needs a register
function sum(n: number, step: number): number {
  if (n <= 0) return 0
  let total = 0
  for (let i = 0; i < n; i += step) total += i
  return total + n
}
console.log(sum(0, 1), sum(-3, 1), sum(10, 3), sum(7, 1))

// a boolean test and a boolean-valued condition
function inRange(x: number, lo: number, hi: number): number {
  if (x < lo || x > hi) return -1
  return x - lo
}
console.log(inRange(5, 1, 10), inRange(0, 1, 10), inRange(11, 1, 10), inRange(10, 1, 10))

// five parameters, all used in the early path
function five(a: number, b: number, c: number, d: number, e: number): number {
  if (a + b + c + d + e === 15) return a * e - b * d + c
  return a - b + c - d + e
}
console.log(five(1, 2, 3, 4, 5), five(5, 4, 3, 2, 1), five(0, 0, 0, 0, 0))

// early return from a function that is called while its caller holds values in registers
function twice(n: number): number {
  if (n < 1) return 0
  return n * 2
}
function caller(a: number, b: number): number {
  let x = a + 1
  let y = b + 2
  let z = twice(a) + twice(b) + x + y
  let w = twice(x - y) + z
  return w * 100 + x * 10 + y
}
console.log(caller(3, 4), caller(0, 0), caller(-2, 6))

// a recursive function whose early path is taken in the middle of the recursion
function depth(n: number, acc: number): number {
  if (n === 0) return acc
  return depth(n - 1, acc + n) + 1
}
console.log(depth(0, 7), depth(1, 7), depth(10, 0))

// the early path is a side-effect-free test, but its value is a constant
function isTiny(n: number): number {
  if (n < 0.5 && n > -0.5) return 1
  return 0
}
console.log(isTiny(0), isTiny(0.4), isTiny(0.6), isTiny(-0.6))

// not an early return, because the test calls a function: it must still work
let counter = 0
function tick(): number { counter++; return counter }
function guarded(n: number): number {
  if (tick() > 2) return n
  return n * 100
}
console.log(guarded(1), guarded(1), guarded(1), counter)
