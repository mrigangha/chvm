import socket, sys, time, urllib.request, threading

port = int(sys.argv[1])
base = "http://127.0.0.1:%d" % port
fails = 0

def check(label, ok, extra=""):
    global fails
    if not ok:
        fails += 1
    print(("ok   " if ok else "FAIL ") + label + (" " + extra if extra else ""))

def get(path, timeout=5):
    t0 = time.time()
    try:
        r = urllib.request.urlopen(base + path, timeout=timeout)
        return r.status, r.read(), time.time() - t0
    except urllib.error.HTTPError as e:
        return e.code, b"", time.time() - t0

check("normal request", get("/")[1] == b"home")

# 1. silent connections do not hold up a real request
silent = [socket.create_connection(("127.0.0.1", port), timeout=10) for _ in range(20)]
time.sleep(0.1)
code, body, dt = get("/hello/ann")
check("a request is answered at once behind 20 silent connections", code == 200 and body == b"hello ann" and dt < 0.5, "(%.3f s)" % dt)
for s in silent:
    s.close()

# 2. slow clients sending a byte at a time do not hold up a real request
drip = []
for _ in range(10):
    s = socket.create_connection(("127.0.0.1", port), timeout=10)
    s.sendall(b"GET / HT")
    drip.append(s)
time.sleep(0.1)
code, body, dt = get("/")
check("a request is answered at once behind 10 half-sent requests", code == 200 and dt < 0.5, "(%.3f s)" % dt)
for s in drip:
    s.close()

# 3. a slow handler (400 ms) does not stop the others
results = []
def slow():
    results.append(get("/slow"))
th = threading.Thread(target=slow)
th.start()
time.sleep(0.05)
t0 = time.time()
fast = [get("/hello/n%d" % i) for i in range(20)]
fast_time = time.time() - t0
th.join()
check("20 fast requests are answered while one slow handler runs", all(c == 200 for c, b, d in fast) and fast_time < 0.35, "(%.3f s for all 20; the slow one took %.2f s)" % (fast_time, results[0][2]))
check("the slow request itself finishes", results[0][0] == 200 and results[0][1] == b"slow done")

# 4. eight slow handlers at once take about as long as one
results = []
def slow2():
    results.append(get("/slow"))
ths = [threading.Thread(target=slow2) for _ in range(8)]
t0 = time.time()
for t in ths:
    t.start()
for t in ths:
    t.join()
total = time.time() - t0
check("8 requests that each take 400 ms are all done in about 400 ms, not 3200", len(results) == 8 and all(r[0] == 200 for r in results) and total < 1.2, "(%.2f s)" % total)

# 5. a crashing handler does not stop anyone
codes = []
def boomer():
    codes.append(get("/boom")[0])
ths = [threading.Thread(target=boomer) for _ in range(10)]
for t in ths:
    t.start()
for t in ths:
    t.join()
check("10 requests to a handler that crashes all get 500", codes == [500] * 10)
check("alive after", get("/")[1] == b"home")

# 6. many at once: under the limit all are served, over it the extra ones are told 503 and nobody hangs or is reset
def burst(n):
    got = {}
    lock = threading.Lock()
    def one(i):
        try:
            r = urllib.request.urlopen(base + "/hello/u%d" % i, timeout=10)
            k = (r.status, r.read() == b"hello u%d" % i)
        except urllib.error.HTTPError as e:
            k = (e.code, False)
        except Exception as e:
            k = (type(e).__name__, False)
        with lock:
            got[k] = got.get(k, 0) + 1
    ths = [threading.Thread(target=one, args=(i,)) for i in range(n)]
    t0 = time.time()
    for t in ths:
        t.start()
    for t in ths:
        t.join()
    return got, time.time() - t0

got, dt = burst(80)
check("80 simultaneous requests (under the limit of 100) are all answered correctly", got == {(200, True): 80}, "(%s, %.2f s)" % (got, dt))
got, dt = burst(200)
good = got.get((200, True), 0)
busy = got.get((503, False), 0)
check("200 simultaneous requests (over the limit): each gets a correct 200 or a clean 503, none hangs or is reset", good + busy == 200 and good >= 100, "(%s, %.2f s)" % (got, dt))

# 7. a flood of connections that never send anything cannot use up the server, and the server turns the extra away
many = []
refused = 0
for i in range(300):
    try:
        many.append(socket.create_connection(("127.0.0.1", port), timeout=5))
    except OSError:
        refused += 1
time.sleep(0.3)
code, body, dt = get("/", timeout=8)
check("300 silent connections at once: a real request gets a prompt answer, 200 or a clean 503, never a hang", code in (200, 503) and dt < 1.0, "(%.3f s, status %s)" % (dt, code))
busy = 0
for s in many:
    s.settimeout(0.2)
    try:
        d = s.recv(100)
        if d.startswith(b"HTTP/1.1 503"):
            busy += 1
    except OSError:
        pass
check("connections over the limit of 100 were answered 503 at once", busy > 0, "(%d got 503)" % busy)
for s in many:
    s.close()
time.sleep(1.8)
code, body, dt = get("/")
check("after they leave, normal service: the slots are free again", code == 200 and body == b"home")

# 8. the server's own memory does not grow with the number of connections it has served. Each connection's
# process starts with a copy of the server's heap, so a leak there made every later connection bigger until it ran
# out of memory, which showed up as resets after a few thousand requests
def serial(n):
    good = 0
    for i in range(n):
        c, b, d = get("/hello/m%d" % i, timeout=10)
        if c == 200 and b == b"hello m%d" % i:
            good += 1
    return good
before = serial(1500)
after = serial(1500)
bursts = [burst(60)[0].get((200, True), 0) for _ in range(10)]
check("3,600 requests after earlier load are all answered", before == 1500 and after == 1500 and bursts == [60] * 10, "(%d, %d, %s)" % (before, after, bursts))

# 9. alive at the end
check("alive at the end", get("/hello/end")[1] == b"hello end")
print("failures:", fails)
sys.exit(1 if fails else 0)
