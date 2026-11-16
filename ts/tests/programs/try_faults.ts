function recurse(n: number): number {
  return recurse(n + 1) + 1
}

function idx(a: number[], i: number): number {
  return a[i]
}

function popEmpty(): number {
  const a: number[] = []
  a.pop()
  return 0
}

function badSlice(s: string): string {
  return s.slice(0, 1) + String.fromCharCode(s.charCodeAt(99))
}

function guard(label: string, f: () => number): void {
  try {
    console.log(label + " -> " + f())
  } catch (e: any) {
    console.log(label + " failed: " + e)
  }
}

function t1(): number { return idx([1, 2, 3], 1) }
function t2(): number { return idx([1, 2, 3], 3) }
function t3(): number { return idx([1, 2, 3], -1) }
function t4(): number { return popEmpty() }
function t5(): number { return badSlice("abc").length }
function t6(): number { return recurse(0) }

function repeat(): void {
  let i = 0
  let ok = 0
  while (i < 200) {
    try {
      const a: number[] = [i]
      ok += a[i % 2]
    } catch (e: any) {
      ok += 1000
    }
    i++
  }
  console.log(ok)
}

function inCatch(): string {
  let log = ""
  try {
    try {
      idx([], 0)
    } catch (e: any) {
      log += "c1;"
      idx([], 1)
      log += "never;"
    } finally {
      log += "f1;"
    }
  } catch (e: any) {
    log += "c2 " + e + ";"
  }
  return log
}

function throwInFinally(): string {
  let log = ""
  try {
    try {
      throw "first"
    } finally {
      log += "fin;"
      throw "second"
    }
  } catch (e: any) {
    log += "caught " + e
  }
  return log
}

function main(): void {
  guard("ok", t1)
  guard("high", t2)
  guard("negative", t3)
  guard("pop", t4)
  guard("slice", t5)
  guard("recursion", t6)
  guard("after the overflow", t1)
  repeat()
  console.log(inCatch())
  console.log(throwInFinally())
  const big: number[] = []
  let i = 0
  while (i < 100) {
    big.push(i)
    i++
  }
  guard("array still fine", t1)
  console.log(big.length)
}
main()
