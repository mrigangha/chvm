function f(a: number): number { return a + 1 }
function g(a: number, b: number): number { return a * b }
const a: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let n = 3
// deep right-leaning and left-leaning expressions
console.log(1 + (2 + (3 + (4 + (5 + (6 + (7 + (8 + (9 + 10)))))))))
console.log((((((((1 + 2) + 3) + 4) + 5) + 6) + 7) + 8) + 9)
console.log(1 - (2 - (3 - (4 - (5 - (6 - (7 - 8)))))))
console.log(2 * (3 + 4 * (5 - 6 / (7 + 8 * (9 - 10)))))
// calls inside deep expressions force values to be kept across the call
console.log(1 + (2 + (3 + (4 + (5 + f(6))))))
console.log(f(1) + (f(2) + (f(3) + (f(4) + (f(5) + (f(6) + f(7)))))))
console.log(g(f(1), g(f(2), g(f(3), f(4)))))
console.log(a[0] + a[1] * (a[2] + a[3] * (a[4] + a[5] * (a[6] + a[7]))))
console.log(a[f(0)] + a[f(1)] * a[f(2)] - a[g(2, 2)] / a[f(0)])
console.log(a[a[a[a[0]]]], a[a[0] + a[1]], a[a[n]])
// every operator against every operand shape
let x = 7
let y = 2
console.log(x + y, x - y, x * y, x / y, x % y, x < y, x <= y, x > y, x >= y, x === y, x !== y)
console.log(x + 3, x - 3, x * 3, x / 3, x % 3, x < 3, x <= 3, x > 3, x >= 3, x === 3, x !== 3)
console.log(3 + x, 3 - x, 3 * x, 3 / x, 3 % x, 3 < x, 3 <= x, 3 > x, 3 >= x, 3 === x, 3 !== x)
console.log(a[1] + a[2], a[1] - a[2], a[1] * a[2], a[1] < a[2], a[1] === a[2], a[3] === a[3])
console.log(-x, -(x + y), -a[2], !(x < y), !(x === y))
// large and small constants, which do not all fit an immediate
console.log(x + 100000, x * 40000, x - 2147483647, x + 2147483648, x * 1e10, x / 0.5, x + 1.5, x % 2.5)
console.log(x < 40000, x < 100000, x > -40000, x > -32768, x > -32769, x === 32767, x === 32768)
// compound assignment on every kind of target
let c = 10
c += 5; c -= 3; c *= 2; c /= 4; c %= 4
console.log(c)
a[0] += 5; a[1] -= 1; a[2] *= 3; a[3] /= 2; a[4] %= 3
console.log(a[0], a[1], a[2], a[3], a[4])
a[f(0)] += a[f(1)]
console.log(a[1])
let i = 0
a[i++] += 100
a[i++] += 100
console.log(a[0], a[1], a[2], i)
// increments as values
let p = 5
console.log(p++, p, ++p, p, p--, p, --p, p)
let q = 1
const r = q++ + q++ + ++q
console.log(r, q)
// conditions
console.log(x > 3 && y < 3, x > 3 || y > 3, !(x > 3) || y < 3, x > 3 && (y < 1 || x < 10))
let k = 0
if (x > 3 && y < 3 && k === 0) k = 1
if (x < 3 || y > 3 || k === 1) k = k + 10
if (!(x < 3) && !(y > 3)) k = k + 100
console.log(k)
while (k > 100 && k < 200) k -= 50
console.log(k)
console.log(x > 3 ? y > 1 ? "a" : "b" : "c", x < 3 ? "a" : y < 1 ? "b" : "c")
// NaN comparisons must not follow the usual negation rules
const nan = 0 / 0
console.log(nan < 1, nan > 1, nan <= 1, nan >= 1, nan === nan, nan !== nan, !(nan < 1), !(nan > 1))
if (!(nan < 1)) console.log("not less"); else console.log("less")
if (nan >= 1) console.log("ge"); else console.log("not ge")
if (nan !== nan) console.log("ne"); else console.log("eq")
let cnt = 0
while (!(nan < 1)) { cnt++; if (cnt > 2) break }
console.log(cnt)
