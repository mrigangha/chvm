function risky(n: number): number {
  if (n < 0) throw "negative: " + n
  if (n === 0) throw "zero"
  return n * 2
}

function wrap(n: number): string {
  try {
    return "ok " + risky(n)
  } catch (e: any) {
    return "caught " + e
  }
}

function deep(n: number): number {
  if (n === 0) throw "bottom"
  return deep(n - 1) + 1
}

function main(): void {
  console.log(wrap(5))
  console.log(wrap(0))
  console.log(wrap(-3))

  let log = ""
  try {
    log += "a"
    risky(1)
    log += "b"
    risky(0)
    log += "c"
  } catch (e: any) {
    log += "[" + e + "]"
  }
  console.log(log)

  try {
    deep(50)
  } catch (e: any) {
    console.log("deep: " + e)
  }

  let count = 0
  let i = 0
  while (i < 5) {
    try {
      if (i % 2 === 1) throw "odd " + i
      count += 10
    } catch (e: any) {
      count += 1
      console.log(e)
    }
    i++
  }
  console.log(count)

  try {
    try {
      throw "inner"
    } catch (e: any) {
      console.log("first " + e)
      throw "again " + e
    }
  } catch (e: any) {
    console.log("second " + e)
  }

  try {
    console.log("no throw")
  } catch (e: any) {
    console.log("never")
  }

  try {
    throw "no variable"
  } catch {
    console.log("caught without a name")
  }
}
main()
