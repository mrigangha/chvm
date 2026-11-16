CC      ?= gcc
CFLAGS  ?= -O2
override CFLAGS += -std=gnu11 -Wall -Wextra -Isrc
# vm_run ends every instruction with its own jump to the next one (computed goto). GCC merges those jumps into
# one shared jump when it thinks duplicating them is too big, which made every program 50 to 100 percent slower
# once the process code was added. The limit is raised so that each handler keeps its own jump.
override CFLAGS += --param max-goto-duplication-insns=32
BUILD   := build
.DEFAULT_GOAL := all

COMMON  := $(BUILD)/chbc.o
TESTLIB :=

# Foreign calls need libffi and dlopen. Build with FFI=0 to leave them out.
FFI     ?= auto
ifeq ($(FFI),auto)
FFI := $(shell pkg-config --exists libffi 2>/dev/null && echo 1 || echo 0)
endif
ifeq ($(FFI),1)
override CFLAGS += -DCHVM_FFI $(shell pkg-config --cflags libffi)
FFILIBS := $(shell pkg-config --libs libffi) -ldl
TESTLIB := $(BUILD)/libchvmtest.so
endif

$(BUILD)/libchvmtest.so: tests/native/testlib.c | $(BUILD)
	$(CC) -O2 -fPIC -shared -o $@ $<

all: $(BUILD)/chvm $(BUILD)/chasm $(BUILD)/chdis $(BUILD)/chbake $(TESTLIB)

$(BUILD)/chvm: $(BUILD)/main.o $(BUILD)/vm.o $(BUILD)/sys.o $(BUILD)/foreign.o $(COMMON)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ -lm $(FFILIBS)

$(BUILD)/chasm: $(BUILD)/chasm.o $(COMMON)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

$(BUILD)/%.o: src/%.c $(wildcard src/*.h) | $(BUILD)
	$(CC) $(CFLAGS) -c -o $@ $<

$(BUILD)/chasm.o: tools/chasm.c $(wildcard src/*.h) | $(BUILD)
	$(CC) $(CFLAGS) -c -o $@ $<

$(BUILD)/chbake: $(BUILD)/chbake.o $(COMMON)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

$(BUILD)/chbake.o: tools/chbake.c $(wildcard src/*.h) | $(BUILD)
	$(CC) $(CFLAGS) -c -o $@ $<

$(BUILD)/chdis: $(BUILD)/chdis.o $(COMMON)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

$(BUILD)/chdis.o: tools/chdis.c $(wildcard src/*.h) | $(BUILD)
	$(CC) $(CFLAGS) -c -o $@ $<

$(BUILD):
	mkdir -p $@

# A static binary cannot load libraries reliably, so it is built without foreign calls.
static: LDFLAGS += -static
static: clean
	$(MAKE) all FFI=0 LDFLAGS=-static

test: all
	sh tests/run.sh
	sh tests/bake.sh

clean:
	rm -rf $(BUILD)

.PHONY: all static test clean
