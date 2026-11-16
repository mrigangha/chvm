import socket, sys, time, urllib.request, urllib.error

port = int(sys.argv[1])
fails = 0

def raw(data, wait=0.3, read=True, timeout=5):
    s = socket.create_connection(("127.0.0.1", port), timeout=timeout)
    if data:
        s.sendall(data)
    time.sleep(wait)
    out = b""
    if read:
        try:
            s.shutdown(socket.SHUT_WR)
        except OSError:
            pass
        try:
            while True:
                d = s.recv(65536)
                if not d:
                    break
                out += d
        except (socket.timeout, ConnectionResetError):
            pass
    s.close()
    return out

def status(b):
    return b[9:12].decode() if b.startswith(b"HTTP/1.1 ") else "none"

def check(label, got, want):
    global fails
    ok = got == want
    if not ok:
        fails += 1
    print(("ok   " if ok else "FAIL ") + label + ": " + str(got) + ("" if ok else " (wanted " + str(want) + ")"))

def alive():
    try:
        r = urllib.request.urlopen("http://127.0.0.1:%d/" % port, timeout=5)
        return r.read() == b"home"
    except Exception as e:
        return str(e)

check("normal request", alive(), True)
check("head too long (a 5000 byte header)", status(raw(b"GET / HTTP/1.1\r\nX-Big: " + b"a" * 5000 + b"\r\n\r\n")), "431")
check("head too long and never ends", status(raw(b"GET / HTTP/1.1\r\n" + b"X-A: b\r\n" * 700)), "431")
check("alive after", alive(), True)
check("body too long (declared 5000000)", status(raw(b"POST /echo HTTP/1.1\r\nContent-Length: 5000000\r\n\r\nx")), "413")
check("body too long (declared and sent 3000)", status(raw(b"POST /echo HTTP/1.1\r\nContent-Length: 3000\r\n\r\n" + b"y" * 3000)), "413")
check("body exactly at the limit", status(raw(b"POST /echo HTTP/1.1\r\nContent-Length: 2000\r\nContent-Type: application/x-www-form-urlencoded\r\n\r\n" + b"z" * 2000)), "200")
check("body one byte over the limit", status(raw(b"POST /echo HTTP/1.1\r\nContent-Length: 2001\r\n\r\n" + b"z" * 2001)), "413")
check("length that is not a number", status(raw(b"POST /echo HTTP/1.1\r\nContent-Length: lots\r\n\r\n")), "400")
check("length negative", status(raw(b"POST /echo HTTP/1.1\r\nContent-Length: -1\r\n\r\n")), "400")
check("length ten digits", status(raw(b"POST /echo HTTP/1.1\r\nContent-Length: 1234567890\r\n\r\n")), "400")
check("body shorter than declared, then the client closes", status(raw(b"POST /echo HTTP/1.1\r\nContent-Length: 100\r\n\r\nshort")), "400")
check("a half request line then close", status(raw(b"GET /ha")), "400")
check("nothing then close", raw(b""), b"")
check("garbage bytes", status(raw(bytes(range(256)) * 3)), "400")
check("only line feeds", status(raw(b"\n\n\n\n")), "400")
check("alive after", alive(), True)

t0 = time.time()
r = raw(b"", wait=0, read=True, timeout=5)
silent = time.time() - t0
check("a client that sends nothing is dropped within the deadline (1.5 s)", silent < 3.0, True)
check("... with no response", r, b"")

t0 = time.time()
s = socket.create_connection(("127.0.0.1", port), timeout=10)
broken = False
for ch in b"GET / HTTP/1.1\r\nX: " * 5:
    try:
        s.sendall(bytes([ch]))
    except (BrokenPipeError, ConnectionResetError):
        broken = True
        break
    time.sleep(0.2)
    if time.time() - t0 > 4:
        break
try:
    got = s.recv(1000)
except Exception:
    got = b""
dt = time.time() - t0
s.close()
check("a client that sends one byte every 0.2 s is cut off by the deadline (the server's 408 arrives, or the connection is already closed)", (status(got) in ("408", "none"), dt < 3.2), (True, True))
check("alive after the slow ones", alive(), True)

# many silent connections at once cost the server at most one deadline each, one after another, and then it is fine
socks = [socket.create_connection(("127.0.0.1", port), timeout=10) for _ in range(5)]
t0 = time.time()
ok = alive()
dt = time.time() - t0
for s in socks:
    s.close()
check("a normal request behind 5 silent connections is served, late but served", ok, True)
print("     (it waited %.1f s)" % dt)

# a flood of tiny requests
t0 = time.time()
good = 0
for i in range(300):
    b = raw(b"GET /hello/n%d HTTP/1.1\r\n\r\n" % i, wait=0, read=True)
    if b.endswith(b"hello n%d" % i):
        good += 1
check("300 requests in a row all answered correctly", good, 300)

check("a route that throws gives 500", status(raw(b"GET /boom HTTP/1.1\r\n\r\n")), "500")
check("alive after the throw", alive(), True)
check("a path attack through the whole server", status(raw(b"GET /files/../outside.txt HTTP/1.1\r\n\r\n")), "404")
check("a static file through the whole server", status(raw(b"GET /files/style.css HTTP/1.1\r\n\r\n")), "200")
check("a pipelined second request is ignored, the first is answered", status(raw(b"GET / HTTP/1.1\r\n\r\nGET /boom HTTP/1.1\r\n\r\n")), "200")
check("a request split over several sends", status((lambda: (lambda s: (s.sendall(b"GE"), time.sleep(0.1), s.sendall(b"T / HT"), time.sleep(0.1), s.sendall(b"TP/1.1\r\n"), time.sleep(0.1), s.sendall(b"\r\n"), s.recv(500))[-1])(socket.create_connection(("127.0.0.1", port), timeout=5)))()), "200")
check("alive at the end", alive(), True)
print("failures:", fails)
sys.exit(1 if fails else 0)
