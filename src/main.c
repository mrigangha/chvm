#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "foreign.h"
#include "vm.h"

/* The program's own EXIT value is returned as-is, so VM errors use sysexits codes. */
enum { EXIT_USAGE = 64, EXIT_LOAD = 65, EXIT_RUN = 70 };

static void usage(void)
{
    fputs("usage: chvm [-m mem_bytes] [-F] [-X] [-v] file.chbc [args...]\n"
          "  -m  memory size in bytes (default 64 MiB)\n"
          "  -F  allow calls into native libraries (dlopen, CALLX). Trusted code only.\n"
          "  -X  allow the program to run other programs (SYS_SPAWN). Trusted code only.\n"
          "  -v  verify only, do not run\n",
          stderr);
}

static int parse_size(const char *s, size_t *out)
{
    char *end;
    unsigned long long v = strtoull(s, &end, 0);
    if (end == s || *end || v == 0)
        return -1;
    *out = (size_t)v;
    return 0;
}

int main(int argc, char **argv)
{
    vm_config cfg = vm_default_config;
    int verify_only = 0;
    int i = 1;

    for (; i < argc && argv[i][0] == '-' && argv[i][1]; i++) {
        if (!strcmp(argv[i], "-v")) {
            verify_only = 1;
        } else if (!strcmp(argv[i], "-X")) {
            cfg.allow_spawn = 1;
        } else if (!strcmp(argv[i], "-F")) {
            if (!foreign_compiled()) {
                fputs("chvm: this build has no foreign call support (rebuild with libffi)\n", stderr);
                return EXIT_USAGE;
            }
            cfg.allow_foreign = 1;
        } else if (!strcmp(argv[i], "-m") && i + 1 < argc) {
            if (parse_size(argv[++i], &cfg.mem_bytes)) {
                usage();
                return EXIT_USAGE;
            }
        } else {
            usage();
            return EXIT_USAGE;
        }
    }
    if (i >= argc) {
        usage();
        return EXIT_USAGE;
    }
    const char *path = argv[i];
    cfg.argc = argc - i;
    cfg.argv = argv + i;

    chbc_image img;
    uint32_t off = 0;
    chbc_err le = chbc_load(path, &img);
    if (le == CHBC_OK)
        le = chbc_verify(&img, &off);
    if (le != CHBC_OK) {
        fprintf(stderr, "chvm: %s: %s (offset %u)\n", path, chbc_err_str(le), off);
        chbc_free(&img);
        return EXIT_LOAD;
    }
    if (verify_only) {
        chbc_free(&img);
        return 0;
    }

    int64_t code = 0;
    vm_status st = vm_run(&img, &cfg, &off, &code);
    if (st != VM_OK) {
        chbc_loc loc;
        fprintf(stderr, "chvm: runtime error: %s (offset %u", vm_status_str(st), off);
        if (chbc_lookup(&img, off, &loc)) {
            if (loc.func)
                fprintf(stderr, ", in %s", loc.func);
            if (loc.file)
                fprintf(stderr, ", %s:%u", loc.file, loc.line);
        }
        fputs(")\n", stderr);
        chbc_free(&img);
        return EXIT_RUN;
    }
    chbc_free(&img);
    return (int)(code & 0xff);
}
