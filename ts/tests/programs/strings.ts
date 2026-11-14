const s: string = "hello, world"
console.log(s.length)
console.log(s.slice(0, 5))
console.log(s.slice(7, 100))
console.log(s.slice(-5, 100))
console.log(s.slice(-5, -2))
console.log(s.slice(3, 1) === "")
console.log(s.indexOf("world"), s.indexOf("xyz"), s.indexOf(""), s.indexOf("o"))
console.log(s.charCodeAt(0), s.charCodeAt(11))
console.log(String.fromCharCode(72) + String.fromCharCode(105))
console.log("a" < "b", "b" < "a", "a" < "a", "a" <= "a", "abc" < "abd", "ab" < "abc", "B" < "a")
console.log("x" === "x", "x" !== "x", "x" === "y", "xy" === "x" + "y")
console.log("" === "", "".length)
let t: string = ""
for (let i = 0; i < 5; i++) {
  t += i
  t += ","
}
console.log(t)
console.log("n=" + 1.5 + " " + -0 + " " + 1e21 + " " + 0.1 + 0.2 + " " + (0.1 + 0.2))
console.log("b=" + true + false)
console.log(1 + 2 + "x" + 1 + 2)
