// Reading a file without stopping the program, for node. A program compiled with chts gets fs_chvm.ts.
// os.ts readFile ends the program when the file is missing, which a server cannot do.

import * as nodefs from "node:fs"

export interface FileResult {
  code: number        // 0 read, 2 no such file, 13 not allowed, 20 or 21 a directory, 27 larger than maxBytes, 5 anything else
  data: string        // the bytes, one character per byte, when code is 0
}

export function readFileSafe(path: string, maxBytes: number): FileResult {
  try {
    const st = nodefs.statSync(path)
    if (st.isDirectory()) return { code: 21, data: "" }
    if (!st.isFile()) return { code: 5, data: "" }
    if (st.size > maxBytes) return { code: 27, data: "" }
    return { code: 0, data: nodefs.readFileSync(path, "latin1") }
  } catch (e) {
    const err = e as { code?: string }
    if (err.code === "ENOENT") return { code: 2, data: "" }
    if (err.code === "ENOTDIR") return { code: 20, data: "" }
    if (err.code === "EACCES" || err.code === "EPERM") return { code: 13, data: "" }
    return { code: 5, data: "" }
  }
}
