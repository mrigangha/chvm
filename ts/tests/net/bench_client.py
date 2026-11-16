import socket, sys, time, threading
port = int(sys.argv[1]); mode = sys.argv[2]
def req(path):
    s = socket.create_connection(("127.0.0.1", port), timeout=20)
    s.sendall(("GET %s HTTP/1.1\r\nHost: x\r\n\r\n" % path).encode())
    d = b""
    while True:
        c = s.recv(65536)
        if not c: break
        d += c
    s.close()
    return d
if mode == "seq":
    t0 = time.time(); n = 2000
    for i in range(n): req("/hello/a")
    dt = time.time() - t0
    print("sequential: %d requests in %.2f s = %.0f req/s" % (n, dt, n / dt))
elif mode == "par":
    n = 2000; done = [0]; lock = threading.Lock()
    def worker():
        for i in range(n // 20):
            req("/hello/a")
            with lock: done[0] += 1
    t0 = time.time()
    ths = [threading.Thread(target=worker) for _ in range(20)]
    [t.start() for t in ths]; [t.join() for t in ths]
    dt = time.time() - t0
    print("20 clients at once: %d requests in %.2f s = %.0f req/s" % (done[0], dt, done[0] / dt))
elif mode == "slow":
    # 1 slow client (holds its connection for the whole run) and 200 normal requests
    slow = socket.create_connection(("127.0.0.1", port), timeout=20)
    slow.sendall(b"GET / HT")
    t0 = time.time()
    for i in range(200): req("/hello/a")
    print("200 requests with one stalled client present: %.2f s" % (time.time() - t0))
    slow.close()
