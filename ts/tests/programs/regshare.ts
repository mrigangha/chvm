// more live variables than there are registers, and variables in sibling blocks that may share one
function many(a: number, b: number, c: number): number {
  let v1 = a + 1
  let v2 = b + 2
  let v3 = c + 3
  let v4 = a * 2
  let v5 = b * 3
  let v6 = c * 4
  let v7 = v1 + v2
  let v8 = v3 + v4
  let t = 0
  for (let i = 0; i < 3; i++) {
    t += v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + i
    v1 = v1 + 1
    v8 = v8 - 1
  }
  return t + v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8
}
console.log(many(1, 2, 3), many(10, 20, 30), many(-5, 0, 5))

function siblings(n: number): number {
  let total = 0
  if (n > 0) {
    let x = n * 2
    let y = x + 1
    total += x * y
  } else {
    let p = n - 7
    let q = p * p
    total += q - p
  }
  {
    let m = total + 1
    let k = m * 2
    total = k - m
  }
  for (let i = 0; i < 3; i++) {
    let sq = i * i
    let cube = sq * i
    total += sq + cube
  }
  for (let j = 0; j < 2; j++) {
    let w = j + 10
    total += w
  }
  return total
}
console.log(siblings(5), siblings(-3), siblings(0))

// a variable declared before a block and used after it must keep its own register
function across(n: number): number {
  let keep = n + 100
  for (let i = 0; i < 3; i++) {
    let tmp = i * 5
    keep += tmp
  }
  let after = keep * 2
  {
    let inner = after + 1
    keep += inner
  }
  return keep + after
}
console.log(across(1), across(-50))

// loops that reuse a name, and a block variable holding a value from one trip to the next
function trips(): number {
  let acc = 0
  for (let i = 0; i < 4; i++) {
    let step = i * 3
    let bonus = step + acc
    acc = bonus - i
  }
  for (let i = 0; i < 4; i++) {
    let step = i + 1
    acc += step * step
  }
  return acc
}
console.log(trips())

// calls in the middle of live variables
function id(v: number): number { return v }
function withCalls(n: number): number {
  let a = n
  let b = a + 1
  {
    let c = id(b) + id(a)
    let d = c + id(c)
    a += d
  }
  {
    let e = id(a) * 2
    let f = e + b
    b += f
  }
  return a * 1000 + b
}
console.log(withCalls(3), withCalls(-2))
