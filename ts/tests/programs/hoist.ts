// Loop-invariant loads: a[i] is read once before the inner loop when nothing in the loop can change it.
// Every function here has few variables on purpose, so a spare register exists and the hoist CAN fire.
// The ones marked "no hoist" must not, because something in the loop could change a[i].

function grid(): number[][] {
  const g: number[][] = []
  for (let r = 0; r < 4; r++) {
    const row: number[] = []
    for (let c = 0; c < 8; c++) row.push(r * 10 + c)
    g.push(row)
  }
  return g
}
const other: number[][] = grid()
other[0][0] = 999
let counter = 0
function bump(): number { counter++; return counter }

// hoist: a plain reduction
function pos(g: number[][], i: number): number {
  let s = 0
  for (let k = 0; k < 8; k++) s += g[i][k]
  return s
}
// hoist: while loop, same shape
function posWhile(g: number[][], i: number): number {
  let s = 0
  let k = 0
  while (k < 8) {
    s += g[i][k] * 2
    k++
  }
  return s
}
// no hoist: the loop stores an element, so g[i] may change
function negStore(g: number[][], i: number): number {
  let s = 0
  for (let k = 0; k < 3; k++) {
    s += g[i][k]
    g[i] = g[i + 1]
  }
  return s
}
// no hoist: the loop stores into the row itself
function negRowStore(g: number[][], i: number): number {
  let s = 0
  for (let k = 0; k < 4; k++) {
    s += g[i][k]
    g[i][k + 1] = 100
  }
  return s
}
// no hoist: the index changes
function negIndex(g: number[][], i: number): number {
  let s = 0
  for (let k = 0; k < 4; k++) {
    s += g[i][k]
    i++
  }
  return s
}
// no hoist: the array variable is reassigned
function negArray(g: number[][], i: number): number {
  let s = 0
  for (let k = 0; k < 3; k++) {
    s += g[i][k]
    g = other
  }
  return s
}
// no hoist: a call in the loop could change anything
function negCall(g: number[][], i: number): number {
  let s = 0
  for (let k = 0; k < 3; k++) s += g[i][k] + bump()
  return s
}
// hoist is valid, but the loop never runs: the out-of-range g[i] must NOT be read
function zeroTrip(g: number[][], i: number): number {
  let s = 0
  for (let k = 5; k < 4; k++) s += g[i][k]
  return s
}
// hoist is valid and the loop runs, with g[i] out of range: it must fault, after the earlier output
function faults(g: number[][], i: number): number {
  let s = 0
  for (let k = 0; k < 2; k++) s += g[i][k]
  return s
}
// two different invariants in one loop
function two(g: number[][], h: number[][], i: number): number {
  let s = 0
  for (let k = 0; k < 4; k++) s += g[i][k] * h[i][k]
  return s
}

const m = grid()
console.log(pos(m, 0), pos(m, 2), pos(m, 3), posWhile(m, 1))
const a = grid()
console.log(negStore(a, 0), a[0][0], a[0][1])
const b = grid()
console.log(negRowStore(b, 1), b[1][0], b[1][1], b[1][4])
console.log(negIndex(grid(), 0), negArray(grid(), 0), negCall(grid(), 1), counter)
console.log(zeroTrip(m, 99), two(m, m, 1))
console.log("before")
console.log(faults(m, 7))
console.log("not reached")
