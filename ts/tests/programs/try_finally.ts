let trace = ""

function note(s: string): void {
  trace += s + " "
}

function flush(): void {
  console.log(trace)
  trace = ""
}

function f1(): number {
  try {
    note("body")
    return 1
  } finally {
    note("fin")
  }
}

function f2(): number {
  try {
    note("body")
    throw "x"
  } catch (e: any) {
    note("catch " + e)
    return 2
  } finally {
    note("fin")
  }
}

function f3(): string {
  try {
    try {
      throw "inner"
    } finally {
      note("fin-inner")
    }
  } catch (e: any) {
    note("outer-catch")
    return e
  } finally {
    note("fin-outer")
  }
}

function f4(n: number): number {
  let total = 0
  let i = 0
  while (i < n) {
    i++
    try {
      if (i === 2) continue
      if (i === 5) break
      total += i
    } finally {
      note("f" + i)
    }
  }
  return total
}

function f5(): number {
  try {
    try {
      return 10
    } finally {
      note("a")
    }
  } finally {
    note("b")
  }
}

function f6(): void {
  try {
    try {
      throw "one"
    } catch (e: any) {
      note("c1 " + e)
      throw "two"
    } finally {
      note("fin1")
    }
  } catch (e: any) {
    note("c2 " + e)
  } finally {
    note("fin2")
  }
}

function f7(): number {
  let a = 1
  let b = 2
  let c = 3
  try {
    a = 10
    b = a + 1
    thrower()
    c = 99
  } catch (e: any) {
    c = c + a + b
  }
  return a * 1000 + b * 100 + c
}

function thrower(): void {
  let x = 5
  let y = 6
  let z = x * y
  if (z > 10) throw "big " + z
}

function f8(): string {
  const parts: string[] = []
  let i = 0
  while (i < 4) {
    try {
      try {
        if (i === 1) throw "one"
        if (i === 3) throw "three"
        parts.push("ok" + i)
      } finally {
        parts.push("f" + i)
      }
    } catch (e: any) {
      parts.push("c:" + e)
    }
    i++
  }
  return parts.join(",")
}

function after(): number {
  return 7
}

function f9(): number {
  let r = 0
  try {
    r = after()
  } finally {
    r += 100
  }
  return r
}

function sum(n: number): number {
  let s = 0
  let i = 0
  while (i < n) {
    s += i
    i++
  }
  return s
}

function f10(n: number): number {
  let keep = sum(n)
  let other = keep * 2
  try {
    keep += sum(10)
    if (n > 3) throw "too big"
    other += 1
  } catch (e: any) {
    other += 1000
  }
  return keep + other + sum(3)
}

function main(): void {
  console.log(f1()); flush()
  console.log(f2()); flush()
  console.log(f3()); flush()
  console.log(f4(10)); flush()
  console.log(f5()); flush()
  f6(); flush()
  console.log(f7())
  console.log(f8())
  console.log(f9())
  console.log(f10(2))
  console.log(f10(8))
}
main()
