import { assertTrue, assertEqNumber, assertEqString, assertNear, assertUnreachable } from "../../std/assert.ts"

function attempt(label: string, f: () => void): void {
  try {
    f()
    console.log(label + ": ok")
  } catch (e: any) {
    console.log(label + ": " + e)
  }
}

function t1(): void { assertTrue(1 + 1 === 2, "arithmetic") }
function t2(): void { assertTrue(1 + 1 === 3, "arithmetic is broken") }
function t3(): void { assertEqNumber(2 * 3, 6, "product") }
function t4(): void { assertEqNumber(2 * 3, 7, "product") }
function t5(): void { assertEqString("a" + "b", "ab", "concat") }
function t6(): void { assertEqString("a" + "b", "abc", "concat") }
function t7(): void { assertNear(0.1 + 0.2, 0.3, 0.0001, "sum") }
function t8(): void { assertNear(0.5, 0.3, 0.0001, "sum") }
function t9(): void { assertNear(0 / 0, 1, 1, "nan is never near") }
function t10(): void { assertUnreachable("after the loop") }

function main(): void {
  attempt("t1", t1)
  attempt("t2", t2)
  attempt("t3", t3)
  attempt("t4", t4)
  attempt("t5", t5)
  attempt("t6", t6)
  attempt("t7", t7)
  attempt("t8", t8)
  attempt("t9", t9)
  attempt("t10", t10)
  assertEqNumber(1, 2, "this one is not caught")
  console.log("not reached")
}
main()
