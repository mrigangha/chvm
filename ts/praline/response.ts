import { plLower, plNoCrlf } from "./strings.ts"
import { htmlEscape } from "./escape.ts"
import { plFatal } from "./fatal.ts"
import type { Request } from "./request.ts"

export interface Response {
  status: number
  headerNames: string[]
  headerValues: string[]
  body: string
  aborted: boolean       // made by abort(), so the app's error page for the status is used
}

export function makeResponse(code: number, contentType: string, body: string): Response {
  const hn: string[] = ["Content-Type"]
  const hv: string[] = [contentType]
  return { status: code, headerNames: hn, headerValues: hv, body: body, aborted: false }
}

export function text(body: string): Response {
  return makeResponse(200, "text/plain; charset=utf-8", body)
}

export function html(body: string): Response {
  return makeResponse(200, "text/html; charset=utf-8", body)
}

function plWholeStatus(code: number): boolean {
  return code >= 100 && code <= 599 && Math.floor(code) === code
}

// Sets the status of a response and returns it: return status(text("gone"), 410)
export function status(res: Response, code: number): Response {
  if (!plWholeStatus(code)) plFatal("the status " + code + " is not a whole number from 100 to 599")
  res.status = code
  return res
}

export function addHeader(res: Response, name: string, value: string): void {
  res.headerNames.push(name)
  res.headerValues.push(value)
}

// What a before hook returns to let the request go on to its route. Any other response ends the request there.
export function next(): Response {
  return makeResponse(0, "text/plain", "")
}

// Sets a header: the first one with this name (in any case) takes the new value, and any others with
// the same name are removed, so the response never carries two values for it.
export function setHeader(res: Response, name: string, value: string): void {
  const low = plLower(name)
  const names: string[] = []
  const values: string[] = []
  let done = false
  let i = 0
  while (i < res.headerNames.length) {
    if (plLower(res.headerNames[i]) === low) {
      if (!done) {
        names.push(name)
        values.push(value)
        done = true
      }
    } else {
      names.push(res.headerNames[i])
      values.push(res.headerValues[i])
    }
    i++
  }
  if (!done) {
    names.push(name)
    values.push(value)
  }
  res.headerNames = names
  res.headerValues = values
}

// An after hook that adds headers every response should have. Register it with afterRequest(app, securityHeaders).
export function securityHeaders(req: Request, res: Response): void {
  setHeader(res, "X-Content-Type-Options", "nosniff")
  setHeader(res, "X-Frame-Options", "DENY")
  setHeader(res, "Referrer-Policy", "strict-origin-when-cross-origin")
}

export function statusText(code: number): string {
  if (code === 200) return "OK"
  if (code === 201) return "Created"
  if (code === 204) return "No Content"
  if (code === 301) return "Moved Permanently"
  if (code === 302) return "Found"
  if (code === 303) return "See Other"
  if (code === 304) return "Not Modified"
  if (code === 307) return "Temporary Redirect"
  if (code === 308) return "Permanent Redirect"
  if (code === 400) return "Bad Request"
  if (code === 401) return "Unauthorized"
  if (code === 403) return "Forbidden"
  if (code === 404) return "Not Found"
  if (code === 405) return "Method Not Allowed"
  if (code === 408) return "Request Timeout"
  if (code === 410) return "Gone"
  if (code === 413) return "Payload Too Large"
  if (code === 414) return "URI Too Long"
  if (code === 431) return "Request Header Fields Too Large"
  if (code === 500) return "Internal Server Error"
  if (code === 501) return "Not Implemented"
  if (code === 503) return "Service Unavailable"
  return "Unknown"
}

// The plain page for an error that has no page of the app's own.
export function errorResponse(code: number): Response {
  return makeResponse(code, "text/html; charset=utf-8", "<h1>" + code + " " + statusText(code) + "</h1>\n")
}

// Ends the request with an error. Return it from a handler: return abort(404). The app's page for that
// status (see onError) is used, or the plain page when there is none.
export function abort(code: number): Response {
  if (!plWholeStatus(code) || code < 400 || code > 599) plFatal("abort needs an error status from 400 to 599, not " + code)
  const res = errorResponse(code)
  res.aborted = true
  return res
}

// A redirect with status 302. The page names the address, escaped, for a client that does not follow it.
// The address is not checked: a handler that sends a visitor to an address taken from the request must
// check that the address is one of its own.
export function redirect(url: string): Response {
  return redirectWith(url, 302)
}

export function redirectWith(url: string, code: number): Response {
  if (code !== 301 && code !== 302 && code !== 303 && code !== 307 && code !== 308) {
    plFatal("a redirect needs the status 301, 302, 303, 307 or 308, not " + code)
  }
  const res = makeResponse(code, "text/html; charset=utf-8", "<p>Redirecting to <a href=\"" + htmlEscape(url) + "\">" + htmlEscape(url) + "</a></p>\n")
  addHeader(res, "Location", url)
  return res
}

// The bytes to send. Content-Length and Connection are always written here, so a handler cannot set
// them, and a header value cannot hold a line break. With headOnly the body is left out but its length is kept.
export function serialize(res: Response, headOnly: boolean): string {
  const code = plWholeStatus(res.status) ? res.status : 500
  let out = "HTTP/1.1 " + code + " " + statusText(code) + "\r\n"
  let i = 0
  while (i < res.headerNames.length) {
    const name = plNoCrlf(res.headerNames[i])
    const low = plLower(name)
    if (low !== "content-length" && low !== "connection") out += name + ": " + plNoCrlf(res.headerValues[i]) + "\r\n"
    i++
  }
  out += "Content-Length: " + res.body.length + "\r\n"
  out += "Connection: close\r\n\r\n"
  if (!headOnly) out += res.body
  return out
}
