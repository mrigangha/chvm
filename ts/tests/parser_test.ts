import { parseFile, dump } from "../src/parser.ts"

let bad = 0
function tree(src: string): string {
  return parseFile("t.ts", src).list.map(dump).join(" | ")
}
function ok(src: string, want: string): void {
  const got = tree(src)
  if (got !== want) {
    console.log("FAIL " + JSON.stringify(src) + "\n  want " + want + "\n  got  " + got)
    bad++
  }
}

ok("1 + 2 * 3", "(expr (binary:+ 1 (binary:* 2 3)))")
ok("1 * 2 + 3", "(expr (binary:+ (binary:* 1 2) 3))")
ok("a - b - c", "(expr (binary:- (binary:- a b) c))")
ok("a || b && c", "(expr (logical:|| a (logical:&& b c)))")
ok("a < b === c < d", "(expr (binary:=== (binary:< a b) (binary:< c d)))")
ok("a = b = c", "(expr (assign:= a (assign:= b c)))")
ok("a ? b : c ? d : e", "(expr (cond a b (cond c d e)))")
ok("x += 1", "(expr (assign:+= x 1))")
ok("-a * b", "(expr (binary:* (unary:- a) b))")
ok("!a && b", "(expr (logical:&& (unary:! a) b))")
ok("a[i + 1].f(x, y)", "(expr (call (member:f (index a (binary:+ i 1))) x y))")
ok("i++", "(expr (update:++ i))")
ok("--i", "(expr (update:-- i))")
ok("[1, 2, 3,]", "(expr (array 1 2 3))")
ok("({ a: 1, b: \"x\" })", "(expr (object (field:a 1) (field:b \"x\")))")
ok("let o = { a: 1 }", "(var:o (object (field:a 1)))")
ok("let x = 1", "(var:x 1)")
ok("const s: string = 'a'", "(var:s <string> \"a\")")
ok("let a: number[][] = []", "(var:a <number[][]> (array))")
ok("let a = 1\nlet b = 2", "(var:a 1) | (var:b 2)")
ok("a\n++b", "(expr a) | (expr (update:++ b))")
ok("f(1)\n(2)", "(expr (call (call f 1) 2))")
ok("if (a) b; else c", "(if a (expr b) (expr c))")
ok("if (a) { b } else if (c) { d }", "(if a (block (expr b)) (if c (block (expr d))))")
ok("while (i < n) i++", "(while (binary:< i n) (expr (update:++ i)))")
ok("for (let i = 0; i < n; i++) { f(i) }", "(for (var:i 0) (binary:< i n) (update:++ i) (block (expr (call f i))))")
ok("for (;;) break", "(for break)")
ok("function f(a: number, b: string[]): boolean { return true }", "(func:f <boolean> (block (return true)) (param:a <number>) (param:b <string[]>))")
ok("function f(): void { return }", "(func:f <void> (block (return)))")
ok("function f(): void {\n return\n 1 }", "(func:f <void> (block (return) (expr 1)))")
ok("interface P { x: number; y: string[] }", "(iface:P (field:x <number>) (field:y <string[]>))")
ok("interface P {\n x: number\n y: P\n}", "(iface:P (field:x <number>) (field:y <P>))")
ok("import { a, b } from './m.ts'", "(import:./m.ts a b)")
ok("export function f(): void {}", "(func:f <void> (block))")
ok("export const k = 1", "(var:k 1)")
ok("a.b.c = 1", "(expr (assign:= (member:c (member:b a)) 1))")
ok("'a' + \"b\"", "(expr (binary:+ \"a\" \"b\"))")
ok("{ let a = 1; { let b = 2 } }", "(block (var:a 1) (block (var:b 2)))")
ok(";", "empty")

function rejects(src: string, want: string): void {
  let msg = ""
  const saved = process.exit
  const savedErr = process.stderr.write
  process.exit = ((c?: number) => { throw new Error("exit") }) as typeof process.exit
  process.stderr.write = ((s: string) => { msg += s; return true }) as typeof process.stderr.write
  try {
    parseFile("t.ts", src)
  } catch (e) {
  }
  process.exit = saved
  process.stderr.write = savedErr
  if (msg.indexOf(want) < 0) {
    console.log("FAIL expected error " + JSON.stringify(want) + " for " + JSON.stringify(src) + ", got " + JSON.stringify(msg))
    bad++
  }
}
rejects("let a", "'a' needs an initial value")
rejects("let a = 1, b = 2", "declare one variable per statement")
rejects("var a = 1", "use 'let' or 'const'")
rejects("function f(a): void {}", "parameter 'a' needs a type")
rejects("function f(a: number)", "needs a return type")
rejects("function f(a: number, b: number, c: number, d: number, e: number, f: number): void {}", "at most 5 parameters")
rejects("function f<T>(): void {}", "generic functions")
rejects("class A {}", "'class' is not supported")
rejects("let a: number | string = 1", "union types")
rejects("let a: Array<number> = []", "generic types")
rejects("for (const x of a) {}", "'for...of' is not supported")
rejects("switch (a) {}", "'switch' is not supported")
rejects("a = new B()", "'new' is not supported")
rejects("{ function f(): void {} }", "only allowed at the top level")
rejects("1 = 2", "must be a variable")
rejects("f(", "expected an expression")
rejects("a b", "expected ';'")
rejects("if (a", "expected ')'")
rejects("x = { a }", "write the field as")
rejects("{", "expected '}'")
rejects("interface P { x?: number }", "optional fields")

console.log(bad === 0 ? "parser: all passed" : "parser: " + bad + " failed")
