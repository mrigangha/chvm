import { parseFile } from "../src/parser.ts"
import { check } from "../src/checker.ts"

let bad = 0
function run(src: string, file: string): string {
  let msg = ""
  const saved = process.exit
  const savedErr = process.stderr.write
  process.exit = ((c?: number) => { throw new Error("exit") }) as typeof process.exit
  process.stderr.write = ((s: string) => { msg += s; return true }) as typeof process.stderr.write
  try {
    check([parseFile(file, src)])
  } catch (e) {
  }
  process.exit = saved
  process.stderr.write = savedErr
  return msg
}
function ok(src: string): void {
  const m = run(src, "t.ts")
  if (m !== "") {
    console.log("FAIL should be accepted: " + JSON.stringify(src) + "\n  " + m)
    bad++
  }
}
function no(src: string, want: string): void {
  const m = run(src, "t.ts")
  if (m.indexOf(want) < 0) {
    console.log("FAIL " + JSON.stringify(src) + "\n  want error containing " + JSON.stringify(want) + "\n  got " + JSON.stringify(m))
    bad++
  }
}

ok("let a = 1 + 2 * 3")
ok("let s = 'a' + 1 + true")
ok("let b = 1 < 2 && 3 >= 2 || !false")
ok("let a: number[] = []\na.push(1)")
ok("let a = [1, 2, 3]\nlet n = a[0] + a.length")
ok("let s = ['a', 'b'].join(',')")
ok("interface P { x: number; y: string }\nlet p: P = { x: 1, y: 'a' }\np.x = p.x + 1")
ok("interface N { next: N; v: number }\nfunction f(n: N): number { return n.v }")
ok("function f(n: number): number { if (n < 2) return n\n return f(n - 1) + f(n - 2) }\nlet r = f(10)")
ok("function f(n: number): number { while (true) { if (n > 0) return n } }")
ok("let x = 0\nfor (let i = 0; i < 3; i++) { x += i }")
ok("let i = 0\nwhile (i < 3) { i++\n if (i === 2) continue\n if (i === 3) break }")
ok("let s = 'abc'\nlet n = s.length + s.charCodeAt(0) + s.indexOf('b')\nlet t = s.slice(1, 2)")
ok("console.log(1, 'a', true)")
ok("let m = Math.floor(2.5) + Math.max(1, 2) + Math.sqrt(4)")
ok("let c = String.fromCharCode(65)")
ok("let a = 1\n{ let a = 2 }")
ok("function f(): void { return }")
ok("let o = true ? 1 : 2")
ok("let aa: number[][] = [[1], [2, 3]]\naa[0].push(4)")

no("let a = 1\nlet a = 2", "already declared")
no("let a = x", "unknown name 'x'")
no("let a = 1 + 'a' - 1", "must be number")
no("let a: number = 'x'", "cannot assign string to 'a' of type number")
no("const a = 1\na = 2", "constant")
no("const a = 1\na++", "constant")
no("let a = 1\nif (a) {}", "the condition must be boolean but is number")
no("let a = 1\nwhile (a) {}", "the condition must be boolean")
no("let a = !1", "'!' must be boolean")
no("let a = 1 && true", "left side of '&&' must be boolean")
no("let a = [1, 'a']", "this element is string")
no("let a = []", "needs a type")
no("let a = 'x'\nlet b = a[0]", "charCodeAt")
no("let a = 1\nlet b = a[0]", "only arrays can be indexed")
no("let a = [1]\nlet b = a['x']", "an index must be number")
no("let a = [1]\na.push('x')", "argument 1 must be number")
no("let a = [1]\na.foo()", "arrays have no method 'foo'")
no("let a = [1]\nlet j = a.join(',')", "join needs an array of strings")
no("let a = 'x'\na.length = 3", "'length' cannot be assigned")
no("let a = 'x'\nlet b = a.foo", "has no field 'foo'")
no("interface P { x: number }\nlet p: P = { x: 1, y: 2 }", "has no field 'y'")
no("interface P { x: number; y: number }\nlet p: P = { x: 1 }", "field 'y' is missing")
no("interface P { x: number }\nlet p: P = { x: 'a' }", "field 'x' is number but this is string")
no("interface P { x: number }\nlet p: P = { x: 1, x: 2 }", "given twice")
no("let p = { x: 1 }", "needs a known interface type")
no("let p: Q = 1", "unknown type 'Q'")
no("function f(a: number): number { return a }\nlet x = f()", "takes 1 argument but got 0")
no("function f(a: number): number { return a }\nlet x = f('a')", "argument 1 must be number")
no("function f(a: number): number { return a }\nlet x = f", "can only be called")
no("function f(a: number): number { if (a > 0) return 1 }", "must return number on every path")
no("function f(): void { return 1 }", "returns void")
no("function f(): number { return }", "must return number")
no("function f(): number { return 'a' }", "returns string but the function returns number")
no("function f(): void {}\nlet x = f()", "a void value cannot be stored")
no("function f(): void {}\nfunction f(): void {}", "already declared")
no("break", "outside a loop")
no("return", "outside a function")
no("1 + 2", "does nothing")
no("let a = 1 === 'a'", "cannot compare number with string")
no("let a = 'a' < 1", "left side of '<' must be number")
no("let a = foo(1)", "unknown function 'foo'")
no("let a = 1\nlet b = a(1)", "is not a function")
no("let a = __ldi(0)", "only available to the runtime")
no("console.log([1])", "prints a string, a number or a boolean")
no("let a = Math.sin(1)", "not supported")
no("let a = Foo.bar(1)", "unknown name 'Foo'")
no("let a = Math.floor", "must be called")
no("let x = true ? 1 : 'a'", "different types")

console.log(bad === 0 ? "checker: all passed" : "checker: " + bad + " failed")
