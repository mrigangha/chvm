import { newTemplates, loadTemplate } from "../template.ts"

function main(): void {
  const ts = newTemplates("praline/tests/templates")
  console.log("start")
  loadTemplate(ts, "bad/for_path.html")
  console.log("not reached")
}
main()
