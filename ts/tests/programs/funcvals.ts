interface Request {
  path: string
  n: number
}

interface Route {
  path: string
  run: (r: Request) => string
}

function double(x: number): number {
  return x * 2
}

function square(x: number): number {
  return x * x
}

function neg(x: number): number {
  return -x
}

function home(r: Request): string {
  return "home " + r.n
}

function about(r: Request): string {
  return "about " + r.path
}

function twice(f: (x: number) => number, v: number): number {
  return f(f(v))
}

function pick(i: number): (x: number) => number {
  if (i === 0) return double
  if (i === 1) return square
  return neg
}

function compose3(a: (x: number) => number, b: (x: number) => number, c: (x: number) => number, v: number): number {
  return c(b(a(v)))
}

function noargs(): number {
  return 42
}

function shout(s: string): void {
  console.log("shout " + s)
}

function sum(f: (x: number) => number, n: number): number {
  let t = 0
  for (let i = 0; i < n; i++) t += f(i)
  return t
}

function find(routes: Route[], path: string): (r: Request) => string {
  let i = 0
  while (i < routes.length) {
    if (routes[i].path === path) return routes[i].run
    i++
  }
  return about
}

const table: ((x: number) => number)[] = [double, square, neg]
const hook: () => number = noargs

function main(): void {
  let i = 0
  while (i < table.length) {
    console.log(table[i](7))
    i++
  }
  console.log(twice(double, 5))
  console.log(twice(square, 3))
  console.log(pick(0)(10) + pick(1)(10) + pick(2)(10))
  console.log(compose3(double, square, neg, 3))
  console.log(hook())
  const f = square
  console.log(f(9) + f(2) * f(3))
  const g: (x: number) => number = pick(1)
  console.log(g === square)
  console.log(g === double)
  shout("hi")
  const say: (s: string) => void = shout
  say("there")
  console.log(sum(double, 10) + sum(neg, 4))

  const routes: Route[] = [{ path: "/", run: home }, { path: "/about", run: about }]
  const req: Request = { path: "/about", n: 3 }
  console.log(find(routes, "/")(req))
  console.log(find(routes, "/about")(req))
  console.log(find(routes, "/none")(req))
  console.log(routes[0].run(req))
  const handler = routes[1].run
  console.log(handler({ path: "/x", n: 1 }))

  let h = double
  h = square
  console.log(h(6))
  console.log(1 + twice(pick(2), 4) * 2 + double(3))
}
main()
