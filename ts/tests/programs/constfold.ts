// a const number set from a literal is replaced by its value at every read
const SIZE = 120
const HALF = 60.5
const NEG = -7
const BIG = 3000000000
const WHOLE: number = 5
function uses(): number {
  const local = 10
  let total = 0
  for (let i = 0; i < local; i++) total += i * local + SIZE
  return total + local + NEG
}
console.log(SIZE, HALF, NEG, BIG, WHOLE, uses())
// shadowing: an inner variable of the same name is a different variable
function shadow(): number {
  const x = 3
  let r = x
  {
    let x = 100
    x += 1
    r += x
  }
  {
    const x = 7
    r += x * 2
  }
  return r + x
}
console.log(shadow())
// the value is used in every position, including as a bound, an index, an argument and a condition
const N = 4
const arr: number[] = [10, 20, 30, 40, 50]
function f(a: number, b: number): number { return a * 10 + b }
let s = 0
for (let i = 0; i < N; i++) s += arr[i] + arr[N] + f(N, N - 1)
if (N === 4 && N > 3 && !(N < 4)) s += 1000
console.log(s, arr[N - 1], N / 8, N % 3, -N)
