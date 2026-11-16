import socket, sys, time, urllib.request
port = int(sys.argv[1])
base = "http://127.0.0.1:%d" % port
print(urllib.request.urlopen(base + "/hello?a=1").read().decode().strip())
# a client that connects and sends nothing, then goes away: the server must give up on it and move on
silent = socket.create_connection(("127.0.0.1", port), timeout=5)
print(urllib.request.urlopen(base + "/after-silent", timeout=5).read().decode().strip())
silent.close()
# a client that sends half a request line and closes
half = socket.create_connection(("127.0.0.1", port), timeout=5)
half.sendall(b"GET /ha")
half.close()
time.sleep(0.2)
req = urllib.request.Request(base + "/post", data=b"x" * 1000, method="POST")
print(urllib.request.urlopen(req, timeout=5).read().decode().strip())
print("client done")
