import { lex } from "../src/lexer.ts"

function show(src: string): string {
  const toks = lex("t.ts", src)
  const parts: string[] = []
  let i = 0
  while (i < toks.length) {
    const t = toks[i]
    if (t.kind === "num") parts.push("n:" + t.num)
    else if (t.kind === "str") parts.push("s:" + JSON.stringify(t.text))
    else if (t.kind === "eof") parts.push("eof@" + t.line + ":" + t.col)
    else parts.push(t.text + (t.nl ? "^" : ""))
    i++
  }
  return parts.join(" ")
}

let bad = 0
function check(src: string, want: string): void {
  const got = show(src)
  if (got !== want) {
    console.log("FAIL " + JSON.stringify(src) + "\n  want " + want + "\n  got  " + got)
    bad++
  }
}

check("let a = 1", "let a = n:1 eof@1:10")
check("a===b!==c", "a === b !== c eof@1:10")
check("x+=1;y++", "x += n:1 ; y ++ eof@1:9")
check("1.5 .5 1e3 1.5e-3 0xff 1_000", "n:1.5 n:0.5 n:1000 n:0.0015 n:255 n:1000 eof@1:29")
check("'a\\n' \"b\\x41\\\\\"", 's:"a\\n" s:"bA\\\\" eof@1:16')
check("a // c\nb /* x\ny */ c", "a b^ c^ eof@3:7")
check("a\n\nb", "a b^ eof@3:2")
check("a.b(c)[d]", "a . b ( c ) [ d ] eof@1:10")
check("a?b:c", "a ? b : c eof@1:6")
check("a<=b>=c<d>e", "a <= b >= c < d > e eof@1:12")
check("a=>b", "a => b eof@1:5")
check("a**b", "a ** b eof@1:5")
check("$x _y z9", "$x _y z9 eof@1:9")
check("", "eof@1:1")
check("9007199254740993", "n:9007199254740992 eof@1:17")
console.log(bad === 0 ? "lexer: all passed" : "lexer: " + bad + " failed")
