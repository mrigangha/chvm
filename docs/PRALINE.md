# Praline: a small web framework for chts

Praline is a Flask-like web framework written in chts and run on chvm. It is the framework behind
the portfolio site. The name fits the project: chvm runs choco bytecode, and a praline is a filled
chocolate. A Praline app is a set of routes, each one a plain function.

It is stage 7e in `PLAN.md`, split into stages 8a to 8h below. It builds on stages 7a to 7d (sockets,
strings, the HTTP core and a static server). Stage 8f reuses the limits and concurrency from 7f, and the
Render deploy in 7g comes last, after 8h.

## What the finished API looks like

```ts
import { App, Request, Response, newApp, route, text, html, render, run } from "./praline/praline.ts"

function home(req: Request): Response {
  return render("home.html", ["title", "Mrigangha"], ["Portfolio"])
}

function project(req: Request): Response {
  return text("project " + param(req, "slug"))
}

function main(): void {
  const app = newApp()
  route(app, "GET", "/", home)
  route(app, "GET", "/projects/<slug>", project)
  run(app)               // reads PORT, binds 0.0.0.0
}
main()
```

The same file is valid TypeScript and runs under node, with a socket stand-in, so tests do not
need a network.

## Design decisions

- **Handlers are top-level functions passed by name.** chts has no closures, so a handler cannot
  capture variables. Anything shared lives in the `App` value or a global. Stage 8a adds this.
- **Routing is a table, not decorators.** `route(app, method, pattern, handler)` appends to arrays.
  There is no `Map`, so lookup is a linear scan. That is fine for tens of routes.
- **The core is a pure function.** `handle(app, raw: string): string` takes request bytes and
  returns response bytes. The socket loop is a thin wrapper around it. Every test calls `handle`
  directly and compares with node.
- **Exceptions are caught per request.** `abort(404)` is a normal return value. A handler that throws, or
  hits a runtime check (bad index, empty pop, runaway recursion), gets a 500 and the server goes on. A
  supervisor restarts the worker if the VM itself stops (stage 8g).
- **No garbage collector.** `run` marks the arena before each request and frees it after the
  response is sent. A handler must not keep a request-time object in a global.
- **Strings are bytes.** Request and response bodies, files and templates are byte strings, so
  UTF-8 passes through untouched.
- **Secure by default.** Template output is HTML-escaped, static paths cannot leave `public/`, and
  header, body and idle limits are on.

## Project layout

```
ts/praline/
  praline.ts      public imports in one file
  app.ts          App, route table, handle()
  request.ts      Request: method, path, query, headers, body, params (parseRequest)
  response.ts     Response, text, html, status, headers, abort, redirect, serialize
  json.ts         jsonString, jsonNumber, jsonObject and the other pieces, json()
  cookies.ts      cookie, setCookie, deleteCookie, cookieOptions
  escape.ts       htmlEscape
  static.ts       static files: safe names, ETag, index files
  mime.ts         the Content-Type for a file name
  server.ts       the server loop: run, limits, deadlines, per-request arena, request log
  fatal.ts        plFatal: a mistake in the program that uses Praline stops it with a message
  context.ts      Context: the data a template reads (text, lists, objects)
  template.ts     the template reader, loader and renderer
  router.ts       patterns with <name> and <int:name>, route lookup, 404 and 405
  decode.ts       percent-decoding, query and form pairs, media types
  input.ts        param, paramInt, arg, argAll, form, formAll, header
  template.ts     {{ }} templates
  static.ts       static files and MIME types
  server.ts       the socket loop, limits, per-request arena, logging
  dev.ts          development mode
  strings.ts      byte-string helpers until the language has its own (stage 7b)
  tests/          one program per feature, checked against node: sh ts/praline/tests/run.sh
  examples/       hello, notes, portfolio
```

## Stages

| Stage | Name | What is built | Done when |
|---|---|---|---|
| 8a (done) | Function values | chts accepts a top-level function name as a value. Type syntax `(r: Request) => Response`. Allowed in parameters, fields, arrays and `const`. Compiled to a code address and `CALLR`. No closures, no arrow functions, no `this`. `LANG.md` is updated. | A program stores three functions in an array and calls them. Output equals node. `tsc --strict` accepts it. Passing a non-top-level function is a clear compile error. The compiler still bootstraps to identical stages. |
| 8b (done) | Core and routing | `Request`, `Response`, `App`. `route`, `handle`, exact-path match, method check, `404` and `405` with an `Allow` header. Helpers `text`, `html`, `status`. | `handle(app, "GET / HTTP/1.1...")` returns the expected bytes. A wrong method gives 405. An unknown path gives 404. Garbage input gives 400. |
| 8c (done) | Params and input | `<name>` and `<int:name>` segments. Query string, percent-decoding, `application/x-www-form-urlencoded` bodies, header lookup that ignores case. Helpers `param`, `arg`, `form`, `header`. | `/blog/<slug>` gives the slug. `?a=1&a=2` and `%20` decode correctly. `<int:id>` rejects `abc` with 404. A form `POST` reaches the handler decoded. |
| 8d (done) | Responses and errors | `json` writer, `redirect`, response headers, cookies (`Set-Cookie` and reading `Cookie`), `abort(code)`, custom error handlers per status code. | A handler returns a JSON body with the right `Content-Type`. `redirect` sets `Location`. A registered 404 handler replaces the default page. |
| 8e (done) | Templates | `render(name, keys, values)`. `{{ x }}` escapes HTML. `{{{ x }}}` is raw. `{% if x %}`, `{% for item in list %}`, `{% include "f.html" %}`, and `{% extends "base.html" %}` with blocks. Templates load from `templates/`. | `<script>` in a value prints as `&lt;script&gt;`. A loop over three items prints three rows. A page extends a layout. An unknown variable is a visible error in dev mode and empty in production. |
| 8f (done) | Static, hooks and server loop | `static` route for `public/` with MIME types, `If-Modified-Since` or `ETag`, `..` blocked. `before` and `after` hooks, which are function values. The socket loop: per-request arena, request log line, header, body and idle limits, SIGTERM exit. | Images download byte for byte. `GET /../x` and `GET /%2e%2e/x` give 404. A hook adds a header to every response. Memory stays flat over 100,000 requests. A silent client is dropped on timeout while another is served. |
| 8g | Development and supervisor | Development mode (`PRALINE_ENV=dev`): templates and static files read from disk on every request, no caching, an error page that shows the request and the route table, coloured request log. `praline new name` writes a project from a template. `praline dev` runs the server, and `praline serve` runs a supervisor that restarts the worker when it exits non-zero (it uses `SYS_SPAWN`). Settings come from `PORT`, `HOST` and `PRALINE_ENV`. | `praline new` then `praline dev` serves a page in under a minute on a clean machine. Editing a template shows on the next refresh without a restart. A handler that traps is logged and the server is back up within a second. |
| 8h | Portfolio and release | The portfolio on Praline: home, projects, blog from files, contact form with a size limit and a honeypot field, 404 page, `/healthz`, `sitemap.xml`, `robots.txt`. A tutorial and an API page in `docs/`. Deploy through 7g. | The site runs on Render. A test suite covers every route. `sh ts/praline/tests/all.sh` passes under node and on chvm. |

## Dependencies

```
7a sockets and env  ->  7c HTTP core  ->  8f server loop
7b string helpers   ->  8c input, 8e templates
8a function values  ->  8b routing and everything after it
8b -> 8c -> 8d -> 8e -> 8f -> 8g -> 8h
```

8a, 7a and 7b can run in parallel. 8b can start with a fake socket as soon as 8a is done.

## Testing

- **Unit tests** call `handle(app, raw)` and compare the response bytes with the expected text.
- **Node cross-check:** each test program runs under node and on chvm, and the outputs must match, like
  `ts/tests/run.sh`.
- **Live tests** start the server, call it with `curl`, and compare with `cmp` for binary files.
- **Abuse tests** send oversized headers, a slow client, bad percent-encoding, paths like `/..`, a
  huge `Content-Length` and random bytes. The server must answer 4xx or drop the client, and never exit.
- **Leak test** sends 100,000 requests and checks that the VM's memory stays flat.

## Risks

- **Function values (8a) touch the checker, code generator and inliner.** The inliner must not treat a
  function that is used as a value as safe to remove, and the bootstrap check (stage 1 equals stage 3)
  must keep passing.
- **A fault in a handler no longer stops the server** (see Exceptions above). A fault the VM cannot catch (`TRAP`, running out of host memory) still does, and the supervisor in 8g covers that. Handlers should still validate input: a 500 is better than a crash, not better than a right answer.
- **The arena cannot check escapes.** A pointer kept after `arenaFree` reads freed memory. Praline keeps
  all long-lived state in `App`, which is built before the first mark.
- **Linear route lookup** is fine for a portfolio. Revisit if a site has hundreds of routes.
- **No TLS.** Render ends HTTPS at its proxy. Do not expose a bare Praline server to the internet without one.

## Status

- **8a done.** Function values in chts.
- **8b done.** `parseRequest`, `serialize`, `route`, `handle`, `text`, `html`, `status`, `addHeader`.
  - Exact-path routes, 404, 405 with `Allow`, and `HEAD` answered by the `GET` route (headers and length, no body).
  - A request that cannot be served gets 400, or 501 for `Transfer-Encoding`. That covers: bad request line, a method that is not capital letters, a target that does not start with `/` or holds a control byte, a version other than HTTP/1.0 and 1.1, a header with no colon or a bad name, a bad or repeated different `Content-Length`, and a body shorter than its length.
  - A header value cannot end its line, so a handler cannot inject a header. `Content-Length` and `Connection` are written by `serialize` and a handler cannot set them.
  - Defining the same method and path twice, a method that is not capital letters, or a pattern that does not start with `/` stops the program at start up with a message.
  - `handle` is a pure function from request bytes to response bytes, so the tests need no socket. The tests run under node and on chvm, compiled by the node build and by the self-hosted compiler, with the same output.
- **8c done.** `param`, `paramInt`, `arg`, `argAll`, `form`, `formAll`, `header`.
  - Patterns: `/blog/<slug>` and `/user/<int:id>`. A parameter fills a whole segment and takes a non-empty value. `<int:id>` takes 1 to 9 digits, so the number is exact. A request that does not fit `<int:id>` goes on to a `<name>` route if there is one, and gets 404 if not.
  - When several routes match, the least general one wins: a literal segment, then `<int:x>`, then `<x>`. `/user/me` beats `/user/<int:id>`, which beats `/user/<name>`. Setting two routes of the same method with the same shape, like `/u/<a>` and `/u/<b>`, stops the program at start up.
  - Path segments are decoded after the path is split, so `%2F` stays inside one segment and cannot make a new one. A path with a bad `%` escape, or an escape that decodes to a control byte (`%00`, `%0A`), gets 400. `%2e%2e` decodes to `..` as plain text in a parameter, so a handler that opens files must still reject it. Stage 8f's static route does.
  - Query strings and `application/x-www-form-urlencoded` bodies are split on `&` and `=`, and decoded with `+` as a space. A bad `%` there is kept as written. A form is read only when the content type matches (case ignored, parameters such as `charset` allowed), and the query string is never mixed into the form.
  - `header(req, "User-Agent", fallback)` ignores case and returns the first of a repeated header. `arg`, `form` and `param` return the first value, and `argAll` and `formAll` return every value.
  - Asking for a parameter the route does not have, or `paramInt` on a value that is not a whole number, is a mistake in the program and stops it with a message.
  - Tests include path escapes, 5,000-byte slugs, 3,000 escapes in a row, 3,000 segments, and 5,000-field forms. They run on the default 64 MiB of memory.
- **8d done.** `json`, `redirect`, `abort`, `onError`, cookies, `htmlEscape`.
  - **JSON** is built from pieces: `json(jsonObject(["name"], [jsonString("Ann")]))`. Strings are escaped the way `JSON.stringify` does. `NaN` and infinity become `null`. The response has `X-Content-Type-Options: nosniff`. The functions build text, so they only need strings, numbers and arrays, which chts has.
  - **`redirect(url)`** gives 302, and `redirectWith(url, code)` takes 301, 302, 303, 307 or 308. A line break in the address is turned into a space in the header, and the address is HTML-escaped in the body. It does not check where the address leads, so a handler that redirects to an address from the request (`?next=`) must check it is one of its own.
  - **`abort(code)`** takes 400 to 599 and returns a response to hand back: `return abort(404)`. **`onError(app, code, page)`** sets the app's page for a status. It is used for a path with no route, a 405, a request that cannot be read (400), and anything given to `abort`. A page that answers with a different status is dropped for the plain page, so an error page cannot turn an error into a success by mistake. The `Allow` header of a 405 is kept. For a request that could not be read the request holds empty fields.
  - **Cookies:** `setCookie(res, name, value, options)` writes `Path`, `Max-Age`, `Secure`, `HttpOnly` and `SameSite`. The defaults are `Path=/`, `HttpOnly` and `SameSite=Lax`. The value is percent-encoded, so no byte can end the cookie early, and `cookie(req, name, fallback)` decodes it again. A name with a space, `;` or `=`, a bad path, a `sameSite` that is not `Lax`, `Strict` or `None`, or `None` without `secure`, stops the program. `Secure` is off by default so local testing over HTTP works, so turn it on for the site on Render. `deleteCookie` sends `Max-Age=0` with an `Expires` in the past, and the path must match the one used to set it.
  - **Mistakes in the program stop it** with a message (`plFatal`): a status outside 100 to 599 or a fraction, `abort` below 400, a redirect with a status that is not a redirect, a second `onError` for one status, and `jsonObject` with names and values of different length. Tests run each one, 22 in all.
  - A response with an invalid status written directly into the struct is sent as 500.
- **8e done.** Templates, `newContext`, `setVar`, `setList`, `setObject`, `newTemplates`, `loadTemplate`, `render`.
  - **Syntax:** `{{ name }}` (escaped), `{{{ name }}}` (as it is), `{{ a.b }}`, `{% if x %}`, `{% if not x %}`, `{% if x == "text" %}` and `!=`, `{% else %}`, `{% for p in list %}` with an `else` for an empty list, `{% include "f.html" %}`, `{% extends "base.html" %}` with `{% block name %}`, and `{# comment #}`. In a loop, `loop.index`, `loop.index0`, `loop.first`, `loop.last` and `loop.length` are set. A tag or comment alone on its line takes the line away with it.
  - **Data:** the data is a `Context` holding text, lists of contexts, and objects. chts has no `Map` or way to look inside a value, so a handler builds it with `setVar`, `setNumber`, `setList` and `setObject`. A name is text, then a list, then an object, in that order.
  - **Load once, at start up.** `loadTemplate` reads a file, checks it, and reads every file it includes or extends. A mistake stops the program with the file and line: an unclosed tag, `endif` closing a `for`, a second `else`, a name that is not a name, a `{{ a + b }}` expression, a quoted name that starts with `/` or holds `..` or `\`, a file that is missing (with where it was used), a cycle of includes, nesting more than 20 files deep, and two blocks with one name. After that rendering cannot fail on a missing file, and no file is read per request. Both the test and the line numbers in errors were checked against 49 broken templates.
  - **Escaping:** `{{ x }}` escapes `& < > " '`, so a value is safe in text and in a quoted attribute. `{{{ x }}}` is for markup you built yourself. A value is data: `{{ secret }}` or `{% include %}` inside a value prints as text and is never run. I tested that.
  - **Unknown names** print nothing, or with `ts.strict = true` print `[[unknown variable: x]]`, escaped. Turn strict on in development mode (stage 8g) so a typo shows on the page. Names such as `constructor` or `__proto__` find nothing, since a name can only come from what was set.
  - **A name hides then restores:** a loop variable hides a variable of the same name and the variable comes back after the loop. `loop` is reserved.
  - **Paths:** the templates directory is given to `newTemplates`, and relative to where the program runs. Template names are checked, so a template cannot read `../secret`.
  - 85 Praline programs now pass under node and on chvm, with the self-hosted compiler too.
- **7a done (the VM side of the server).** `chvm -N` and `chbake --net` allow `GETENV`, `LISTEN`, `ACCEPT`, `POLL`, `SHUTDOWN` and `SOCKPORT`. `ts/std/net.ts` and `net_chvm.ts` wrap them for chts: `getEnv`, `listen`, `accept`, `recv`, `sendAll`, `finishWriting`, `closeFd`, `localPort`. A program can accept connections but cannot open one. `ACCEPT` takes an io timeout, so a client that connects and says nothing cannot hold the server: its read gives up with `-11` and the loop moves on. A write to a client that left returns `-32` and does not end the program. 300 connections in a row leave the fd numbers small. The VM suite passes under AddressSanitizer and UBSan. A chts server answers `curl`. Full rules are in `docs/ABI.md`.
- **Exceptions (added between 7a and 8f).** chts has `throw`, `try`/`catch`/`finally` and assertions, and the VM has `TRY`, `ENDTRY` and `THROW`. This closes the main risk in this plan: a handler that fails no longer stops the server. `handle` runs each handler inside a `try`. A `throw "..."`, an array index out of range, a `pop` of an empty array, or a runaway recursion in a handler gives that request a 500 (the app's own page when `onError(app, 500, ...)` is set), writes `praline: GET /path failed: reason` to stderr, and the next request is served. The reason is never sent to the client. The test starts a real server, crashes it three times with `curl`, and checks that it still answers every other request. `app.lastError` holds the last reason for tests and for the dev error page in 8g.
- **8f done.** `staticDir`, `beforeRequest`, `afterRequest`, `next`, `setHeader`, `securityHeaders`, `run`, `serverConfig`.
  - **Static files.** `staticDir(app, "/static", "public")` serves `GET` and `HEAD` for files under a directory. Routes are tried first, so a route can override a file. The prefix `/` serves the whole site, and a longer prefix wins over a shorter one. The returned settings hold `index` (the file for a path that ends in `/`, off by default), `maxAge` (default one hour) and `maxBytes` (default 8 MiB). A response has `Content-Type` by extension, `ETag`, `Cache-Control`, and `X-Content-Type-Options: nosniff`. A matching `If-None-Match` gets a 304. Binary files download byte for byte (checked with `cmp` against a real server).
  - **What a static route refuses, always with a 404:** `..` in any form (`%2e%2e`, `.%2e`, `..%2f`, `..%5c`, a double-encoded `%252e`), a backslash, an empty segment (`//`), any segment that starts with a dot (so `.git`, `.env` and `.htaccess` are never served), a name over 300 bytes or 12 segments deep, and a directory asked for without the final `/`. A control byte (`%00`, `%0a`) is refused earlier, as a 400. I tested 33 attacks and none leaked a byte of a file outside the directory. A symbolic link inside the directory that points outside is followed by the operating system and cannot be detected here, but nobody who only sends requests can create one.
  - **Hooks.** `beforeRequest(app, hook)` runs on every request that was read correctly, in the order added. A hook returns `next()` to go on, or any other response to end the request there (a redirect, `abort(403)`, a cached page). A hook that throws gives a 500. `afterRequest(app, hook)` runs on every response, error pages included, and may change it with `setHeader`. A hook that throws is logged and skipped, so one bad hook cannot turn every page into an error. A request that could not be read (400) skips the before hooks and still gets the after hooks. `securityHeaders` is an after hook that sets `X-Content-Type-Options`, `X-Frame-Options: DENY` and `Referrer-Policy`.
  - **The server loop.** `run(app, serverConfig())` reads `PORT` and `HOST` from the environment, listens, and serves one connection at a time. `PORT` set means a hosting service, so the default host is `0.0.0.0`, otherwise `127.0.0.1`. A bad `PORT` or `HOST` stops at start up with a message. The first line on stdout is the port, so a program started with port 0 can be found.
  - **Limits (all configurable).** The head (request line and headers) is at most 16 KiB, else 431. The body is at most 1 MiB, else 413, and a too-long body is refused from the `Content-Length` header without reading it. A bad or 10-digit length is 400. One deadline of 10 s covers reading the whole request, so a client that sends a byte every 0.2 s is cut off. A single stuck read or write gives up after 5 s. A client that connects and sends nothing is dropped with no response. The request is read into one fixed buffer, so a request cannot make the server allocate more than the limits.
  - **Memory.** `run` marks the arena before each connection and frees it after, and closes the connection. 6,000 mixed requests (forms, a throwing handler, files) run in a 6 MB VM. With the arena turned off, the same server runs out of memory after 296 requests.
  - **Abuse test (`ts/tests/net/abuse.py`, 33 checks, against a real server):** oversize head and body, one byte over and exactly at the limit, bad lengths, a body shorter than its length, half a request, garbage bytes, a silent client, a slow-drip client, five silent connections at once, 300 requests in a row, a throwing route, a path attack, a pipelined second request, and a request sent in four pieces. The server stayed up through all of it.
  - **Known limit:** one connection at a time. A silent client delays the queue by up to the deadline (10 s by default). 7f adds concurrency. A request that is pipelined behind another on the same connection is ignored, since every response closes the connection.
- **Concurrency (done, with the actor model).** The VM has lightweight processes (`docs/ACTORS.md`), and `runConcurrent` serves each connection in a process of its own. A client that sends nothing, or sends a byte a second, holds only its own process. 200 requests with one stalled client present take 0.04 s, against 3.05 s for the one-at-a-time loop. 8 requests that each take 400 ms are all done in 0.41 s. 300 silent connections at once do not stop a real request (it is answered in 3 ms), and connections over the limit get a clean 503. The price is speed on easy traffic: about half the requests per second of the one-at-a-time loop, because every connection pays for a spawn and a copy of the heap.
- **Not yet:** the supervisor over the accept loop, and SIGTERM (8g), because `handle` takes the whole request as one string. The server loop will cap the header and body size before it calls `handle`.
