import { plLower } from "./strings.ts"

// The Content-Type for a file name, from its extension (the part after the last dot, in lower case).
// Text types name their charset. An unknown type is application/octet-stream, which a browser downloads
// and does not run.
export function mimeFor(name: string): string {
  let dot = -1
  let i = name.length - 1
  while (i >= 0) {
    const c = name.charCodeAt(i)
    if (c === 47) break
    if (c === 46) {
      dot = i
      break
    }
    i--
  }
  if (dot < 0) return "application/octet-stream"
  const ext = plLower(name.slice(dot + 1, name.length))
  if (ext === "html" || ext === "htm") return "text/html; charset=utf-8"
  if (ext === "css") return "text/css; charset=utf-8"
  if (ext === "js" || ext === "mjs") return "text/javascript; charset=utf-8"
  if (ext === "json") return "application/json"
  if (ext === "txt") return "text/plain; charset=utf-8"
  if (ext === "md") return "text/plain; charset=utf-8"
  if (ext === "xml") return "application/xml"
  if (ext === "svg") return "image/svg+xml"
  if (ext === "png") return "image/png"
  if (ext === "jpg" || ext === "jpeg") return "image/jpeg"
  if (ext === "gif") return "image/gif"
  if (ext === "webp") return "image/webp"
  if (ext === "ico") return "image/x-icon"
  if (ext === "avif") return "image/avif"
  if (ext === "woff") return "font/woff"
  if (ext === "woff2") return "font/woff2"
  if (ext === "ttf") return "font/ttf"
  if (ext === "otf") return "font/otf"
  if (ext === "pdf") return "application/pdf"
  if (ext === "mp4") return "video/mp4"
  if (ext === "webm") return "video/webm"
  if (ext === "mp3") return "audio/mpeg"
  if (ext === "wasm") return "application/wasm"
  if (ext === "csv") return "text/csv; charset=utf-8"
  if (ext === "map") return "application/json"
  return "application/octet-stream"
}
