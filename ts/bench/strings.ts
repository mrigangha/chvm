const parts: string[] = []
for (let i = 0; i < 200000; i++) parts.push("item" + i)
const joined = parts.join(",")
console.log(joined.length)
let count = 0
for (let i = 0; i < joined.length; i++) if (joined.charCodeAt(i) === 44) count++
console.log(count)
let s = ""
for (let i = 0; i < 3000; i++) s += "x" + i
console.log(s.length)
