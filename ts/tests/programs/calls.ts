function add(a: number, b: number): number { return a + b }
function sub3(a: number, b: number, c: number): number { return a - b - c }
function five(a: number, b: number, c: number, d: number, e: number): number { return a * 10000 + b * 1000 + c * 100 + d * 10 + e }
function id(a: number): number { return a }
function twice(a: number): number { return a * 2 }
function name(s: string, n: number, t: string): string { return s + n + t }
function pick(flag: boolean, a: number, b: number): number { return flag ? a : b }

// an argument that calls, in every position
console.log(add(id(1), 2), add(1, id(2)), add(id(1), id(2)))
console.log(sub3(id(10), id(3), id(2)), sub3(10, id(3), 2), sub3(id(10), 3, id(2)))
console.log(five(1, 2, 3, 4, 5), five(id(1), id(2), id(3), id(4), id(5)), five(1, id(2), 3, id(4), 5))
// nested calls
console.log(add(twice(add(1, 2)), twice(add(3, 4))))
console.log(five(add(0, 1), twice(1), add(1, twice(1)), id(twice(2)), add(add(2, 2), 1)))
// arguments that use the same variable the call result is stored in
let x = 5
x = add(x, x)
x = add(x, id(x))
x = sub3(x, id(1), x - 20)
console.log(x)
// the parameter order must be kept when an argument is a parameter of the caller
function swap(a: number, b: number): number { return sub3(b, a, 0) }
console.log(swap(3, 10))
function rot(a: number, b: number, c: number): number { return sub3(c, a, b) }
console.log(rot(1, 2, 10))
function many(a: number, b: number, c: number, d: number, e: number): number { return five(e, d, c, b, a) }
console.log(many(1, 2, 3, 4, 5))
// strings and booleans as arguments, with calls inside
console.log(name("a", add(1, 2), "z"), name(name("x", 1, "y"), id(2), name("p", 3, "q")))
console.log(pick(add(1, 1) === 2, id(7), twice(4)), pick(add(1, 1) === 3, id(7), twice(4)))
// a call in a loop condition and in an index
const arr: number[] = [10, 20, 30, 40]
let s = 0
for (let i = 0; i < add(1, 3); i++) s += arr[id(i)] + add(i, arr[twice(0)])
console.log(s)
// recursion with two recursive calls in one expression
function fibr(n: number): number { return n < 2 ? n : add(fibr(n - 1), fibr(n - 2)) }
console.log(fibr(15))
function ack(m: number, n: number): number {
  if (m === 0) return n + 1
  if (n === 0) return ack(m - 1, 1)
  return ack(m - 1, ack(m, n - 1))
}
console.log(ack(2, 3))
