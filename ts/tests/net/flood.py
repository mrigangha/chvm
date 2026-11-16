import socket, sys
port = int(sys.argv[1]); n = int(sys.argv[2]); good = 0
for i in range(n):
    s = socket.create_connection(("127.0.0.1", port), timeout=5)
    if i % 4 == 0:
        s.sendall(b"POST /echo HTTP/1.1\r\nContent-Type: application/x-www-form-urlencoded\r\nContent-Length: 600\r\n\r\nname=" + b"a" * 595)
    elif i % 4 == 1:
        s.sendall(b"GET /boom HTTP/1.1\r\n\r\n")
    elif i % 4 == 2:
        s.sendall(b"GET /files/style.css HTTP/1.1\r\n\r\n")
    else:
        s.sendall(b"GET /hello/%d HTTP/1.1\r\n\r\n" % i)
    s.shutdown(socket.SHUT_WR)
    d = b""
    while True:
        c = s.recv(65536)
        if not c: break
        d += c
    s.close()
    if d.startswith(b"HTTP/1.1 "): good += 1
print("answered", good, "of", n)
