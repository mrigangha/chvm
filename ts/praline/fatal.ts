import { printErr, exit } from "../std/os.ts"

// A mistake in the program that uses Praline (a bad route, a bad cookie name, a wrong status) stops
// the program with a message, so it shows up in the first test run and not as a bad page later.
export function plFatal(msg: string): void {
  printErr("praline: " + msg + "\n")
  exit(1)
}
