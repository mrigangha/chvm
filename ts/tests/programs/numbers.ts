console.log(1 / 3, 2 / 3, 10 / 4, 7 % 3, -7 % 3, 7 % -3, 5.5 % 2, 1 / 0, -1 / 0, 0 / 0)
console.log(0.1 + 0.2, 0.1 * 3, 1e21, 1e-7, 123456789012345680000, 5e-324)
console.log(Math.floor(2.7), Math.floor(-2.7), Math.ceil(2.2), Math.ceil(-2.2), Math.trunc(2.7), Math.trunc(-2.7))
console.log(Math.abs(-3), Math.abs(3), Math.sqrt(16), Math.sqrt(2), Math.min(3, 1), Math.max(3, 1), Math.min(-0, 0))
console.log(Math.max(1, 1), Math.min(2, 2), Math.max(-5, -2))
console.log(-0, 0, -0 + 0, 0 * -1)
console.log(1 < 2, 2 < 1, 1 <= 1, 2 > 1, 1 >= 2, 1 === 1, 1 !== 1, 0 === -0)
console.log(255, 0xff, 1_000, .5, 5., 1e3, 1.5e-3)
console.log(9007199254740992, 9007199254740993, 4294967296 * 4294967296)
let x = 10
x -= 3
x *= 2
x /= 7
x %= 3
console.log(x)
let n = 5
console.log(n++, n, ++n, n, n--, n, --n, n)
console.log(!true, !false, true && false, true || false, false || false, true && true)
const big: number = 123456789 * 1000
console.log(big, big + 0.5)
console.log(true ? 1 : 2, false ? 1 : 2, 1 < 2 ? "y" : "n")
