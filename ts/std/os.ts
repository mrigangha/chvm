// Standard library: files, arguments, exit and other programs, for node. A program compiled with chts
// gets os_chvm.ts in its place, which does the same through system calls.
import * as fs from "node:fs"
import * as cp from "node:child_process"
import * as os from "node:os"

export function fileExists(path: string): boolean {
  return fs.existsSync(path)
}

export function readFile(path: string): string {
  return fs.readFileSync(path, "latin1")
}

export function writeFile(path: string, data: string): void {
  fs.writeFileSync(path, data, "latin1")
}

export function argCount(): number {
  return process.argv.length - 2
}

export function argAt(i: number): string {
  return process.argv[i + 2]
}

// Directory holding chasm and chvm: $CHVM_BIN, or build/ next to the repository root.
export function toolDir(): string {
  const e = process.env.CHVM_BIN
  if (e !== undefined && e !== "") return e
  return dirOf(process.argv[1]) + "/../../build"
}

export function printErr(s: string): void {
  process.stderr.write(s)
}

export function exit(code: number): void {
  process.exit(code)
}

export function runProgram(cmd: string, args: string[]): number {
  const r = cp.spawnSync(cmd, args, { stdio: "inherit" })
  if (r.status === null) return 1
  return r.status
}

export function dirOf(path: string): string {
  const i = path.lastIndexOf("/")
  if (i < 0) return "."
  return path.slice(0, i)
}

export function tempPath(name: string): string {
  return os.tmpdir() + "/" + name + "." + process.pid
}

export function removeFile(path: string): void {
  try {
    fs.unlinkSync(path)
  } catch (e) {
  }
}
