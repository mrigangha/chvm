const a: number[] = [10, 20, 30]
console.log(a.length, a[0], a[1], a[2])
a.push(40)
a.push(50)
console.log(a.length, a[4])
console.log(a.pop(), a.length)
a[0] = a[1] + a[2]
console.log(a[0])
a[1] += 5
a[2] *= 2
console.log(a[1], a[2])
a[0]++
++a[0]
console.log(a[0])
const b: number[] = a.slice(1, 3)
console.log(b.length, b[0], b[1])
const c: number[] = a.slice(-2, 100)
console.log(c.length, c[0], c[1])
console.log(a.slice(5, 9).length, a.slice(2, 1).length)
const grid: number[][] = [[1, 2], [3, 4, 5]]
grid[1][2] = 50
grid[0].push(9)
console.log(grid.length, grid[0].length, grid[1].length, grid[0][2], grid[1][2])
const words: string[] = ["a", "bc", "def"]
console.log(words.join("-"), words.join(""), words.join(", "))
const empty: string[] = []
console.log(empty.join(",") === "", empty.length)
const flags: boolean[] = [true, false]
flags.push(true)
console.log(flags[0], flags[1], flags[2], flags.length)
let sum = 0
for (let i = 0; i < a.length; i++) sum += a[i]
console.log(sum)
const big: number[] = []
for (let i = 0; i < 1000; i++) big.push(i * 2)
console.log(big.length, big[0], big[999], big[500])
