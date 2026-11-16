// A throw skips the epilogues of every call it leaves. The caller of the function that catches must still
// see its own variables unchanged, and so must the function that catches.
function burn(n: number): number {
  let a = n + 1
  let b = a * 2
  let c = b + a
  let d = c * 3
  let e = d - b
  let f = e + c
  let g = f * 2
  let h = g + e
  let i = h - d
  let j = i + g
  if (n === 0) throw "burned " + (a + b + c + d + e + f + g + h + i + j)
  return burn(n - 1) + a + b + c + d + e + f + g + h + i + j
}

function middle(n: number): number {
  let p = 11
  let q = 22
  let r = 33
  let s = p + q + r
  const out = burn(n)
  return out + p + q + r + s
}

function catcher(n: number): string {
  let u = 100
  let v = 200
  let w = 300
  let msg = ""
  try {
    u += middle(n)
    v += 1
  } catch (e: any) {
    msg = e
    w += u + v
  }
  return msg + " " + u + " " + v + " " + w
}

function outer(n: number): number {
  let k1 = 1
  let k2 = 2
  let k3 = 3
  let k4 = 4
  let k5 = 5
  const r = catcher(n)
  console.log(r)
  return k1 + k2 * 10 + k3 * 100 + k4 * 1000 + k5 * 10000
}

function loops(n: number): number {
  let total = 0
  let x = 1
  let y = 2
  let i = 0
  while (i < n) {
    try {
      x = x + 1
      if (i % 3 === 2) burn(0)
      total += x
    } catch (e: any) {
      y = y + e.length
    }
    i++
  }
  return total * 1000 + x * 100 + y
}

function main(): void {
  console.log(outer(0))
  console.log(outer(3))
  console.log(loops(9))
  let m1 = 5
  let m2 = 6
  try {
    burn(2)
  } catch (e: any) {
    m1 += e.length
  }
  console.log(m1 + m2)
}
main()
