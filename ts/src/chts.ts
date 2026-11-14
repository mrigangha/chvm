import { readFile, fileExists, writeFile, argCount, argAt, printErr, exit, runProgram, dirOf, tempPath, removeFile, toolDir } from "./host.ts"
import { parseFile } from "./parser.ts"
import { check } from "./checker.ts"
import { generate } from "./codegen.ts"
import { PRELUDE_ASM } from "./prelude_asm.ts"
import { PRELUDE_SRC } from "./prelude_src.ts"
import { fail } from "./diag.ts"
import type { Node } from "./ast.ts"

// chts [-S] [-o out.chbc] [-r] [-H host.ts] file.ts
//   -S   write the assembly to the output instead of assembling it
//   -o   output file (default: the input name with .chbc)
//   -r   run the program afterwards
//   -H   use this file in place of host.ts (the compiler's own build uses host_chvm.ts)
function usage(): void {
  printErr("usage: chts [-S] [-r] [-o out] file.ts\n")
  exit(64)
}

function resolveImport(from: string, rel: string): string {
  let base = dirOf(from)
  let r = rel
  while (r.slice(0, 3) === "../") {
    base = dirOf(base)
    r = r.slice(3)
  }
  if (r.slice(0, 2) === "./") r = r.slice(2)
  return base + "/" + r
}

// Reads the entry file and everything it imports, each file once, imports first.
function isHostFile(path: string): boolean {
  return path.slice(path.length - 8, path.length) === "/host.ts" || path === "host.ts"
}

function loadAll(entry0: string, out: Node[], seen: string[], hostFile: string): void {
  let entry = entry0
  if (hostFile !== "" && isHostFile(entry)) entry = hostFile
  let i = 0
  while (i < seen.length) {
    if (seen[i] === entry) return
    i++
  }
  seen.push(entry)
  if (!fileExists(entry)) {
    printErr("chts: cannot read " + entry + "\n")
    exit(66)
  }
  const tree = parseFile(entry, readFile(entry))
  let k = 0
  while (k < tree.list.length) {
    const it = tree.list[k]
    if (it.kind === "import") loadAll(resolveImport(entry, it.text), out, seen, hostFile)
    k++
  }
  out.push(tree)
}

function main(): void {
  let asmOnly = false
  let runIt = false
  let outPath = ""
  let input = ""
  let hostFile = ""
  let i = 0
  while (i < argCount()) {
    const a = argAt(i)
    if (a === "-S") asmOnly = true
    else if (a === "-r") runIt = true
    else if (a === "-H") {
      i++
      if (i >= argCount()) usage()
      hostFile = argAt(i)
    }
    else if (a === "-o") {
      i++
      if (i >= argCount()) usage()
      outPath = argAt(i)
    } else if (input === "") input = a
    else usage()
    i++
  }
  if (input === "") usage()

  const files: Node[] = []
  const prelude = parseFile("prelude.ts", PRELUDE_SRC)
  files.push(prelude)
  loadAll(input, files, [], hostFile)
  const prog = check(files)
  const asm = generate(prog, input) + PRELUDE_ASM

  if (outPath === "") outPath = input.slice(0, input.length - (input.slice(-3) === ".ts" ? 3 : 0)) + (asmOnly ? ".asm" : ".chbc")
  if (asmOnly) {
    writeFile(outPath, asm)
    return
  }
  const tmp = tempPath("chts") + ".asm"
  writeFile(tmp, asm)
  const chasm = toolDir() + "/chasm"
  const rc = runProgram(chasm, [tmp, outPath])
  removeFile(tmp)
  if (rc !== 0) {
    printErr("chts: assembling failed\n")
    exit(70)
  }
  if (runIt) exit(runProgram(toolDir() + "/chvm", [outPath]))
}

main()
