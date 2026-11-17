#!/bin/sh
# Compiles a chts server, starts it on chvm with -N, and drives it from a python client. Checks what the
# client saw and what the server logged, including a client that connects and says nothing.
# Needs build/chvm and build/chasm, node and python3.
cd "$(dirname "$0")/../.." || exit 1
ROOT=$(cd .. && pwd)
export CHVM_BIN="$ROOT/build"
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
command -v python3 >/dev/null 2>&1 || { echo "net: skipped (needs python3)"; exit 0; }
node src/chts.ts -o "$T/s.chbc" tests/net/echo_server.ts || { echo "FAIL net (compile)"; exit 1; }
: >"$T/out"
"$CHVM_BIN/chvm" -N "$T/s.chbc" >"$T/out" 2>"$T/err" &
pid=$!
tries=0
while [ ! -s "$T/out" ] && [ $tries -lt 100 ] && kill -0 $pid 2>/dev/null; do sleep 0.05; tries=$((tries + 1)); done
port=$(head -n 1 "$T/out")
python3 tests/net/client.py "$port" >"$T/client" 2>"$T/cerr"
crc=$?
i=0
while kill -0 $pid 2>/dev/null && [ $i -lt 100 ]; do sleep 0.05; i=$((i + 1)); done
kill -9 $pid 2>/dev/null
wait $pid 2>/dev/null
tail -n +2 "$T/out" >"$T/server"
cat >"$T/want_client" <<'WANT'
line=[GET /hello?a=1 HTTP/1.1] err=0
line=[GET /after-silent HTTP/1.1] err=0
line=[POST /post HTTP/1.1] err=0
client done
WANT
cat >"$T/want_server" <<'WANT'
line=[GET /hello?a=1 HTTP/1.1] err=0 sent=0
line=[] err=-11 sent=0
line=[GET /after-silent HTTP/1.1] err=0 sent=0
line=[GET /h] err=0 sent=0
line=[POST /post HTTP/1.1] err=0 sent=0
served 5
WANT
if [ "$crc" -eq 0 ] && cmp -s "$T/client" "$T/want_client" && cmp -s "$T/server" "$T/want_server"; then
    :
else
    echo "FAIL net: client rc=$crc"
    diff "$T/want_client" "$T/client" | head -8; diff "$T/want_server" "$T/server" | head -8; head -5 "$T/cerr" "$T/err"
    echo "net: passed 0, failed 1"
    exit 1
fi

# a handler that crashes must not take the server down
node src/chts.ts -o "$T/c.chbc" tests/net/crash_server.ts || { echo "FAIL crash (compile)"; echo "net: passed 1, failed 1"; exit 1; }
: >"$T/cout"
"$CHVM_BIN/chvm" -N "$T/c.chbc" >"$T/cout" 2>"$T/cerr2" &
cpid=$!
tries=0
while [ ! -s "$T/cout" ] && [ $tries -lt 100 ] && kill -0 $cpid 2>/dev/null; do sleep 0.05; tries=$((tries + 1)); done
cport=$(head -n 1 "$T/cout")
codes=""
for p in fine boom fine boom boom fine; do
    code=$(python3 -c "import urllib.request, urllib.error, sys
try:
    print(urllib.request.urlopen('http://127.0.0.1:$cport/$p', timeout=5).status)
except urllib.error.HTTPError as e:
    print(e.code)")
    codes="$codes$code "
done
i=0
while kill -0 $cpid 2>/dev/null && [ $i -lt 60 ]; do sleep 0.05; i=$((i + 1)); done
kill -9 $cpid 2>/dev/null
wait $cpid 2>/dev/null
if [ "$codes" = "200 500 200 500 500 200 " ] && [ "$(grep -c 'failed: index out of range' "$T/cerr2")" = "3" ]; then
    :
else
    echo "FAIL crash: codes [$codes], log: $(cat "$T/cerr2" | head -3)"
    echo "net: passed 1, failed 1"
    exit 1
fi

# the Praline server loop against abusive clients: limits, deadlines, junk, floods
node src/chts.ts -o "$T/p.chbc" tests/net/praline_server.ts || { echo "FAIL praline server (compile)"; echo "net: passed 2, failed 1"; exit 1; }
: >"$T/pout"
"$CHVM_BIN/chvm" -N "$T/p.chbc" >"$T/pout" 2>"$T/perr" &
ppid=$!
tries=0
while [ ! -s "$T/pout" ] && [ $tries -lt 100 ] && kill -0 $ppid 2>/dev/null; do sleep 0.05; tries=$((tries + 1)); done
pport=$(head -n 1 "$T/pout")
timeout 120 python3 tests/net/abuse.py "$pport" >"$T/abuse" 2>&1
arc=$?
alive=no
kill -0 $ppid 2>/dev/null && alive=yes
kill -9 $ppid 2>/dev/null
wait $ppid 2>/dev/null
if [ "$arc" -eq 0 ] && [ "$alive" = yes ]; then
    :
else
    echo "FAIL praline server: abuse client rc=$arc, server alive=$alive"; grep -v "^ok" "$T/abuse" | head -10; grep -v "^[0-9][0-9][0-9] " "$T/perr" | head -5
    echo "net: passed 2, failed 1"
    exit 1
fi

# the same server in 6 MB of memory answers 3000 mixed requests: the arena keeps its memory flat
"$CHVM_BIN/chvm" -m 6000000 -N "$T/p.chbc" >"$T/fout" 2>"$T/ferr" &
fpid=$!
tries=0
while [ ! -s "$T/fout" ] && [ $tries -lt 100 ] && kill -0 $fpid 2>/dev/null; do sleep 0.05; tries=$((tries + 1)); done
fport=$(head -n 1 "$T/fout")
python3 tests/net/flood.py "$fport" 3000 >"$T/flood" 2>&1
falive=no
kill -0 $fpid 2>/dev/null && falive=yes
kill -9 $fpid 2>/dev/null
wait $fpid 2>/dev/null
if [ "$falive" = yes ] && grep -q "answered 3000 of 3000" "$T/flood"; then
    :
else
    echo "FAIL flood: alive=$falive $(cat "$T/flood" | tail -2)"
    echo "net: passed 3, failed 1"
    exit 1
fi

# the concurrent server: the same abuse, and what only concurrency changes
node src/chts.ts -o "$T/cc.chbc" tests/net/concurrent_server.ts || { echo "FAIL concurrent server (compile)"; echo "net: passed 4, failed 1"; exit 1; }
for script in abuse concurrency; do
    : >"$T/cout"
    MAX_CONNECTIONS=100 "$CHVM_BIN/chvm" -N "$T/cc.chbc" >"$T/cout" 2>"$T/cerr" &
    cpid=$!
    tries=0
    while [ ! -s "$T/cout" ] && [ $tries -lt 100 ] && kill -0 $cpid 2>/dev/null; do sleep 0.05; tries=$((tries + 1)); done
    cport=$(head -n 1 "$T/cout")
    timeout 120 python3 "tests/net/$script.py" "$cport" >"$T/$script.out" 2>&1
    crc=$?
    calive=no
    kill -0 $cpid 2>/dev/null && calive=yes
    kill -9 $cpid 2>/dev/null
    wait $cpid 2>/dev/null
    if [ "$crc" -ne 0 ] || [ "$calive" != yes ]; then
        echo "FAIL concurrent server, $script: client rc=$crc, server alive=$calive"
        grep -v "^ok" "$T/$script.out" | head -10
        echo "net: passed 4, failed 1"
        exit 1
    fi
done
# SIGTERM and SIGINT: finish the request in progress, stop accepting, exit 0
for mode in conc seq; do
    if ! python3 tests/net/shutdown.py "$CHVM_BIN/chvm" "$T/cc.chbc" $mode >"$T/sd.out" 2>&1; then
        echo "FAIL shutdown ($mode):"; grep -v "^ok" "$T/sd.out" | head -8
        echo "net: passed 6, failed 1"
        exit 1
    fi
done
echo "net: passed 8, failed 0"
