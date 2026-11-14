let best = 0, bestN = 0
for (let i = 1; i < 300000; i++) {
  let n = i, c = 0
  while (n !== 1) { if (n % 2 === 0) n = n / 2; else n = 3 * n + 1; c++ }
  if (c > best) { best = c; bestN = i }
}
console.log(bestN)
console.log(best)
