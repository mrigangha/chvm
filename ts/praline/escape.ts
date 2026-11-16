// Text that is safe to put inside HTML, in element content or in a quoted attribute.
// The five characters & < > " ' become entities. Everything else, including bytes above 127, is kept.
export function htmlEscape(s: string): string {
  let needs = false
  let i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    if (c === 38 || c === 60 || c === 62 || c === 34 || c === 39) needs = true
    i++
  }
  if (!needs) return s
  const parts: string[] = []
  let run = 0
  i = 0
  while (i < s.length) {
    const c = s.charCodeAt(i)
    let rep = ""
    if (c === 38) rep = "&amp;"
    else if (c === 60) rep = "&lt;"
    else if (c === 62) rep = "&gt;"
    else if (c === 34) rep = "&quot;"
    else if (c === 39) rep = "&#39;"
    if (rep !== "") {
      parts.push(s.slice(run, i))
      parts.push(rep)
      run = i + 1
    }
    i++
  }
  parts.push(s.slice(run, s.length))
  return parts.join("")
}
