const n: number = 5000000
const flags: boolean[] = []
for (let i = 0; i <= n; i++) flags.push(true)
flags[0] = false
flags[1] = false
for (let i = 2; i * i <= n; i++) {
  if (flags[i]) {
    for (let j = i * i; j <= n; j += i) flags[j] = false
  }
}
let count = 0
for (let i = 0; i <= n; i++) if (flags[i]) count++
console.log(count)
