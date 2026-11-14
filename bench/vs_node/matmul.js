const n = 120
const a = new Float64Array(n * n), b = new Float64Array(n * n), c = new Float64Array(n * n)
for (let i = 0; i < n; i++) for (let j = 0; j < n; j++) { a[i * n + j] = i + j; b[i * n + j] = i - j }
for (let i = 0; i < n; i++) for (let j = 0; j < n; j++) {
  let s = 0
  for (let k = 0; k < n; k++) s += a[i * n + k] * b[k * n + j]
  c[i * n + j] = s
}
console.log(c[0]); console.log(c[119 * 120 + 119]); console.log(c[10 * 120 + 20])
