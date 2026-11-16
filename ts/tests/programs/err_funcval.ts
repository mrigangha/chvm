function inc(a: number): number {
  return a + 1
}
const f: (a: string) => number = inc
console.log(f("x"))
