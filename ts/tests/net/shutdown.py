# SIGTERM: the server stops accepting, finishes the request being served, and exits with 0.
# usage: shutdown.py chvm program mode
import os, signal, socket, subprocess, sys, threading, time

chvm, prog, mode = sys.argv[1], sys.argv[2], sys.argv[3]
fails = 0

def check(label, ok, extra=""):
    global fails
    if not ok:
        fails += 1
    print(("ok   " if ok else "FAIL ") + label + (" " + extra if extra else ""))

def get(port, path, timeout=5):
    s = socket.create_connection(("127.0.0.1", port), timeout=timeout)
    s.sendall(("GET %s HTTP/1.1\r\nHost: x\r\nConnection: close\r\n\r\n" % path).encode())
    data = b""
    while True:
        c = s.recv(4096)
        if not c:
            break
        data += c
    s.close()
    return data

env = dict(os.environ, MODE=mode, TEST_PORT="0", DEADLINE_MS="3000", IO_MS="3000")
for sig in (signal.SIGTERM, signal.SIGINT):
    name = signal.Signals(sig).name
    p = subprocess.Popen([chvm, "-N", prog], stdout=subprocess.PIPE, stderr=subprocess.PIPE, env=env)
    port = int(p.stdout.readline())
    check(name + ": the server answers before the signal", b"200 OK" in get(port, "/") )
    got = {}
    def slow():
        got["r"] = get(port, "/slow", timeout=10)
    t = threading.Thread(target=slow)
    t.start()
    time.sleep(0.15)
    p.send_signal(sig)
    t.join(10)
    check(name + ": the request in progress is finished", b"slow done" in got.get("r", b""))
    t0 = time.time()
    try:
        rc = p.wait(timeout=5)
    except subprocess.TimeoutExpired:
        p.kill()
        rc = None
    check(name + ": the server exits with 0 within 5 s", rc == 0, "(rc=%s, %.2f s)" % (rc, time.time() - t0))
    refused = False
    try:
        socket.create_connection(("127.0.0.1", port), timeout=1).close()
    except OSError:
        refused = True
    check(name + ": the port no longer accepts connections", refused)
    err = p.stderr.read().decode()
    check(name + ": it said it was stopping", "praline: stopping" in err)

# a second signal ends a server that is stuck draining
p = subprocess.Popen([chvm, "-N", prog], stdout=subprocess.PIPE, stderr=subprocess.PIPE, env=env)
port = int(p.stdout.readline())
silent = socket.create_connection(("127.0.0.1", port), timeout=10)
time.sleep(0.2)
p.send_signal(signal.SIGTERM)
time.sleep(0.3)
p.send_signal(signal.SIGTERM)
try:
    rc = p.wait(timeout=3)
except subprocess.TimeoutExpired:
    p.kill()
    rc = None
check("a second SIGTERM ends it at once", rc is not None and rc != 0, "(rc=%s)" % rc)
sys.exit(1 if fails else 0)
