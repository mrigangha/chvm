function steps(n: number): number {
  let c = 0
  while (n !== 1) {
    if (n % 2 === 0) n = n / 2
    else n = 3 * n + 1
    c++
  }
  return c
}
let best = 0
let bestN = 0
for (let i = 1; i < 300000; i++) {
  const s = steps(i)
  if (s > best) {
    best = s
    bestN = i
  }
}
console.log(bestN, best)
