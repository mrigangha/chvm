function f(a: number, b: number): number {
  let x = a
  let y = b
  x = y - x
  y = x * y + x
  x = x - y
  y = (x + y) * (x - y)
  x = x < y ? x : y
  return x * 1000 + y
}
console.log(f(3, 10), f(7, 2), f(-4, 5))
function g(n: number): number {
  let s = 0
  let t = 1
  for (let i = 0; i < n; i++) {
    s = t + s
    t = s - t
    s = s * 2 - t
  }
  return s * 100 + t
}
console.log(g(5), g(10))
const arr: number[] = [1, 2, 3, 4]
function h(): number {
  let i = 1
  let v = 0
  i = arr[i]
  v = arr[i]
  i = arr.length - i
  return i * 10 + v
}
console.log(h())
// the variable is read on the right and written on the left, in every operator and operand order
function k(a: number, b: number): number {
  let x = a
  let y = b
  x = x + y
  x = y + x
  x = x - y
  x = y - x
  x = x * y
  x = 3 * x
  x = x * 3
  x = 3 + x
  x = x + 3
  x = x / y
  x = 100 / x
  x = x % 7
  x = y % x
  x = -x
  x = x < y ? 1 : 2
  const same = x === 1
  y = same ? 1 : 0
  return x * 10 + y
}
console.log(k(3, 4), k(10, 3), k(-7, 5))
// a constant on the left of + and * with something that has a side effect on the right
let calls = 0
function bump(): number { calls++; return calls }
console.log(3 + bump(), 3 * bump(), bump() + 3, bump() * 3, calls)
let q = 5
q = 2 + q
q = 2 * q
q = q++ + 2
console.log(q)
