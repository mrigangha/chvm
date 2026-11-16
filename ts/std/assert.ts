// Assertions. A failed assertion throws a string that starts with "assertion failed", so it can be caught
// with try/catch like any other throw, and ends the program when nothing catches it.
// The string is thrown as it is (not wrapped in an Error), so node and chvm give the caught value the same text.
// chts compiles assert_chvm.ts for this module, which has the same source.

export function assertTrue(cond: boolean, msg: string): void {
  if (!cond) throw "assertion failed: " + msg
}

export function assertEqNumber(actual: number, expected: number, msg: string): void {
  if (actual !== expected) throw "assertion failed: " + msg + ": expected " + expected + " but got " + actual
}

export function assertEqString(actual: string, expected: string, msg: string): void {
  if (actual !== expected) throw "assertion failed: " + msg + ": expected \"" + expected + "\" but got \"" + actual + "\""
}

// For results of floating point arithmetic: |actual - expected| must be within tolerance.
export function assertNear(actual: number, expected: number, tolerance: number, msg: string): void {
  const d = Math.abs(actual - expected)
  if (!(d <= tolerance)) throw "assertion failed: " + msg + ": expected " + expected + " (within " + tolerance + ") but got " + actual
}

// Stops at a place that must never be reached.
export function assertUnreachable(msg: string): void {
  throw "assertion failed: unreachable: " + msg
}
