function fib(n: number): number {
  if (n < 2) return n
  return fib(n - 1) + fib(n - 2)
}
console.log(fib(20))
let total: number = 0
for (let i = 0; i < 10; i++) {
  total += i
}
console.log("total", total)
const a: number[] = []
a.push(1)
a.push(2)
a.push(3)
console.log(a.length, a[0], a[2])
a[1] = 20
console.log(a[1] + a[0])
const s = "abc" + 1 + true
console.log(s, s.length)
