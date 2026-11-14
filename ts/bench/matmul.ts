const n: number = 120
const a: number[][] = []
const b: number[][] = []
const c: number[][] = []
for (let i = 0; i < n; i++) {
  const ra: number[] = []
  const rb: number[] = []
  const rc: number[] = []
  for (let j = 0; j < n; j++) {
    ra.push(i + j)
    rb.push(i - j)
    rc.push(0)
  }
  a.push(ra)
  b.push(rb)
  c.push(rc)
}
for (let i = 0; i < n; i++) {
  for (let j = 0; j < n; j++) {
    let s = 0
    for (let k = 0; k < n; k++) s += a[i][k] * b[k][j]
    c[i][j] = s
  }
}
console.log(c[0][0], c[n - 1][n - 1], c[10][20])
