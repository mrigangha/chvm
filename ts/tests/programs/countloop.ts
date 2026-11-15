// counting loops, some of which can fuse the step and the test and some of which must not

function up(n: number): number {
  let s = 0
  for (let i = 0; i < n; i++) s += i
  return s
}
function upEq(n: number): number {
  let s = 0
  for (let i = 1; i <= n; i++) s += i * i
  return s
}
function down(n: number): number {
  let s = 0
  for (let i = n; i > 0; i--) s = s * 2 + i
  return s
}
function downEq(n: number): number {
  let s = 0
  for (let i = n; i >= 0; i--) s += i
  return s
}
console.log(up(0), up(1), up(10), upEq(0), upEq(1), upEq(10), down(0), down(5), downEq(0), downEq(4))

// constant bounds: small, 16-bit edge, and large
function consts(): number {
  let a = 0
  for (let i = 0; i < 100; i++) a++
  let b = 0
  for (let i = 0; i < 32767; i++) b++
  let c = 0
  for (let i = 0; i < 32768; i++) c++
  let d = 0
  for (let i = 100000; i > 0; i--) d++
  let e = 0
  for (let i = 0; i <= 70000; i += 1) e++
  return a + b * 1000 + c * 100000 + d + e
}
console.log(consts())

// the bound changes inside the loop, so the test must read its new value every trip
function shrinking(n: number): number {
  let count = 0
  for (let i = 0; i < n; i++) {
    count++
    n--
  }
  return count * 1000 + n
}
function growing(n: number): number {
  let count = 0
  let limit = n
  for (let i = 0; i < limit; i++) {
    count++
    if (count < 5) limit++
  }
  return count
}
console.log(shrinking(10), shrinking(0), growing(2), growing(8))

// the counter is changed in the body as well as in the step
function skipping(n: number): number {
  let seen = 0
  for (let i = 0; i < n; i++) {
    seen++
    if (i % 3 === 0) i++
  }
  return seen
}
console.log(skipping(10), skipping(1), skipping(0))

// the loop runs zero times, and exactly once
function edges(): number {
  let r = 0
  for (let i = 5; i < 5; i++) r += 1000
  for (let i = 5; i <= 5; i++) r += 1
  for (let i = 5; i > 5; i--) r += 1000
  for (let i = 5; i >= 5; i--) r += 10
  return r
}
console.log(edges())

// continue and break inside a fused loop
function jumps(n: number): number {
  let s = 0
  for (let i = 0; i < n; i++) {
    if (i === 2) continue
    if (i === 6) break
    s += i
  }
  return s
}
console.log(jumps(10), jumps(4))

// a non-integer bound and a fractional start
function frac(): number {
  let a = 0
  for (let i = 0; i < 4.5; i++) a++
  let b = 0
  for (let i = 0.5; i < 4; i++) b += i
  return a * 100 + b
}
console.log(frac())

// the counter's final value after the loop is read
function final(n: number): number {
  let i = 0
  for (i = 0; i < n; i++) {}
  return i
}
console.log(final(0), final(7))

// nested loops, the inner bound is the outer counter
function tri(n: number): number {
  let s = 0
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < i; j++) s += j
  }
  return s
}
console.log(tri(6), tri(0), tri(1))

// NaN as a bound: no trip after the first
function nanBound(): number {
  const nan = 0 / 0
  let c = 0
  for (let i = 0; i < nan; i++) c++
  for (let i = 0; i <= nan; i++) c += 10
  return c
}
console.log(nanBound())
