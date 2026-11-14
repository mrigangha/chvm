let i = 0
let acc = 0
while (i < 10) {
  i++
  if (i % 2 === 0) continue
  if (i > 7) break
  acc += i
}
console.log(i, acc)
for (let a = 0; a < 3; a++) {
  for (let b = 0; b < 3; b++) {
    if (b === 2) break
    if (a === 1) continue
    console.log(a, b)
  }
}
let k = 0
for (;;) {
  k++
  if (k >= 4) break
}
console.log(k)
function sign(n: number): string {
  if (n < 0) return "neg"
  else if (n === 0) return "zero"
  else return "pos"
}
console.log(sign(-5), sign(0), sign(5))
function fact(n: number): number {
  if (n <= 1) return 1
  return n * fact(n - 1)
}
console.log(fact(10), fact(20), fact(25))
function gcd(a: number, b: number): number {
  while (b !== 0) {
    const t = b
    b = a % b
    a = t
  }
  return a
}
console.log(gcd(48, 18), gcd(17, 5))
function isPrime(n: number): boolean {
  if (n < 2) return false
  for (let d = 2; d * d <= n; d++) if (n % d === 0) return false
  return true
}
let primes = 0
for (let p = 0; p < 100; p++) if (isPrime(p)) primes++
console.log(primes)
let shadow = 1
{
  let shadow = 2
  console.log(shadow)
}
console.log(shadow)
function noop(): void {}
noop()
function early(n: number): void {
  if (n > 0) return
  console.log("not positive")
}
early(1)
early(0)
