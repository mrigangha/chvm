const N = 5000000
const flags = new Uint8Array(N + 1)
for (let i = 2; i * i <= N; i++) if (flags[i] === 0) for (let j = i * i; j <= N; j += i) flags[j] = 1
let count = 0
for (let i = 2; i <= N; i++) if (flags[i] === 0) count++
console.log(count)
