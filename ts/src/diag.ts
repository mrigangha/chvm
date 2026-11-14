import { printErr, exit } from "./host.ts"

export function fail(file: string, line: number, col: number, msg: string): void {
  printErr(file + ":" + line + ":" + col + ": error: " + msg + "\n")
  exit(1)
}
