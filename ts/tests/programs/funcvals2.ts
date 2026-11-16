interface Box {
  f: (a: number, b: number) => number
  g: (s: string) => string
  n: number
}

function add(a: number, b: number): number {
  return a + b
}

function mul(a: number, b: number): number {
  return a * b
}

function bang(s: string): string {
  return s + "!"
}

function id(x: number): number {
  return x
}

function apply2(f: (a: number, b: number) => number, a: number, b: number): number {
  return f(a, b)
}

function five(a: number, b: number, c: number, d: number, e: number): number {
  return a + b * 2 + c * 3 + d * 4 + e * 5
}

function mkbox(n: number): Box {
  return { f: n > 0 ? add : mul, g: bang, n: n }
}

function fact(f: (n: number) => number, n: number): number {
  if (n <= 1) return 1
  return n * f(n - 1)
}

function factorial(n: number): number {
  return fact(factorial, n)
}

function evens(n: number, step: (x: number) => number): number[] {
  const out: number[] = []
  let i = 0
  while (i < n) {
    out.push(step(i))
    i++
  }
  return out
}

let calls = 0
function counted(x: number): number {
  calls++
  return x + 1
}

function main(): void {
  const b = mkbox(3)
  const c = mkbox(-3)
  console.log(b.f(2, 5))
  console.log(c.f(2, 5))
  console.log(b.g("a") + b.g("b"))
  console.log(b.f(1, 2) + c.f(3, 4) * b.f(5, 6) - c.f(7, 8))
  console.log(apply2(add, apply2(mul, 3, 4), apply2(add, 5, 6)))
  console.log(apply2(b.f, b.f(1, 1), c.f(3, 3)))
  const f5: (a: number, b: number, c: number, d: number, e: number) => number = five
  console.log(f5(1, 2, 3, 4, 5))
  console.log(f5(f5(1, 1, 1, 1, 1), 2, f5(0, 0, 1, 0, 0), 4, id(5)))
  console.log(factorial(10))
  const arr = evens(5, counted)
  let k = 0
  while (k < arr.length) {
    console.log(arr[k])
    k++
  }
  console.log(calls)
  const fs: ((x: number) => number)[] = [id, counted, id]
  let t = 0
  let i = 0
  while (i < 3) {
    t += fs[i](i * 10) + fs[(i + 1) % 3](1)
    i++
  }
  console.log(t)
  console.log(calls)
  const a = 10
  const z = a + b.f(a, a) * c.f(a, 2) + a
  console.log(z)
  const w = fs[1](fs[1](fs[1](0)))
  console.log(w)
  const h: (x: number) => number = a > 5 ? id : counted
  console.log(h(77))
  console.log(b.n > 0 && b.f(1, 1) === 2)
  console.log(b.n < 0 || c.f(2, 2) === 4)
}
main()
