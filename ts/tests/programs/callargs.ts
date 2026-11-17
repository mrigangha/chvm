// A call inside an argument must not overwrite the arguments already computed for the call around it.
// The first version of this test was found by a random program generator: g2(1, a * h3(5, b, 5)) gave -35.
interface Box { v: number }
let counter = 0
function f1(x: number): number { counter++; return x * 2 + 1 }
function g2(a: number, b: number): number { counter++; return a - b * 3 }
function h3(a: number, b: number, c: number): number { counter++; return a * 2 + b - c }

function t1(a: number, b: number): number {
  return g2(1, a * h3(5, b, 5))
}
function t2(a: number, b: number, obj: Box): number {
  return g2(1, obj.v * h3(5, b, 5))
}
function t3(a: number, b: number): number {
  return h3(a, b * f1(a), g2(a, b) * f1(b))
}
function t4(a: number, b: number, c: number): number {
  return g2(f1(a) * g2(b, c), h3(a, b, c) * f1(c))
}
function t5(a: number, b: number): number {
  return h3(1, 2, a * g2(b, h3(a, b, a) * f1(b)))
}
function t6(a: number, b: number, arr: number[]): number {
  return h3(arr[0], a * f1(arr[1]), b * g2(arr[2], a))
}
function t7(a: number): number {
  return g2(g2(g2(a, 1) * f1(a), 2) * f1(a), g2(f1(a), 3) * g2(a, a))
}
function t8(a: number, b: number): string {
  return "x" + g2(a, b) * f1(a) + "y" + h3(a, b, 1) * g2(b, a)
}

const arr: number[] = [3, 5, 7, 11]
const obj: Box = { v: 13 }
console.log(t1(2, 3), t2(2, 3, obj), t3(2, 3), t4(2, 3, 4), t5(2, 3), t6(2, 3, arr), t7(2), t8(2, 3), counter)
