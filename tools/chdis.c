/*
 * chdis: disassembler for chbc.
 *
 *   chdis [-s] [-n] file.chbc
 *
 *   -s  skip the data section dump
 *   -n  no addresses or raw bytes, only assembly (output that chasm can read back)
 *
 * With -n the output reassembles to the same code. Labels are written as L<offset>,
 * and function names and source lines come from the debug section.
 */
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "chbc.h"

static const char *regname(unsigned r)
{
    static char names[CHBC_NREGS][4];
    if (r == CHBC_REG_FP)
        return "fp";
    if (r == CHBC_REG_SP)
        return "sp";
    snprintf(names[r & 15], sizeof names[0], "r%u", r & 15);
    return names[r & 15];
}

static void print_mem(const chbc_insn *in)
{
    if (in->imm == 0)
        printf("[%s]", regname(in->b));
    else if (in->imm > 0)
        printf("[%s+%d]", regname(in->b), in->imm);
    else
        printf("[%s-%" PRId64 "]", regname(in->b), -(int64_t)in->imm);
}

static void print_target(uint32_t t)
{
    printf("L%u", t);
}

static void print_insn(const chbc_insn *in)
{
    unsigned fmt = chbc_op_fmt[in->op];
    if (fmt == F_NONE) {
        fputs(chbc_op_name[in->op], stdout);
        return;
    }
    printf("%-7s", chbc_op_name[in->op]);
    switch (fmt) {
    case F_NONE:
        break;
    case F_R:
        printf(" %s", regname(in->a));
        break;
    case F_RR:
        printf(" %s, %s", regname(in->a), regname(in->b));
        break;
    case F_RRR:
        printf(" %s, %s, %s", regname(in->a), regname(in->b), regname(in->c));
        break;
    case F_RRRR:
        printf(" %s, %s, %s, %s", regname(in->a), regname(in->b), regname(in->c),
               regname((unsigned)in->imm));
        break;
    case F_RI:
        if (in->op == OP_MOVHI)
            printf(" %s, 0x%" PRIx32, regname(in->a), (uint32_t)in->imm);
        else
            printf(" %s, %d", regname(in->a), in->imm);
        break;
    case F_RRI:
        printf(" %s, %s, %d", regname(in->a), regname(in->b), in->imm);
        break;
    case F_LD:
        printf(" %s, ", regname(in->a));
        print_mem(in);
        break;
    case F_ST:
        putchar(' ');
        print_mem(in);
        printf(", %s", regname(in->c));
        break;
    case F_I:
        printf(" %d", in->imm);
        break;
    case F_J:
        putchar(' ');
        print_target((uint32_t)in->imm);
        break;
    case F_RJ:
        printf(" %s, ", regname(in->a));
        print_target((uint32_t)in->imm);
        break;
    case F_RRJ:
        printf(" %s, %s, ", regname(in->a), regname(in->b));
        print_target((uint32_t)in->imm);
        break;
    case F_RIJ: {
        unsigned v = in->b | (unsigned)in->c << 8;
        if (in->op == OP_JTAB)
            printf(" %s, %u, ", regname(in->a), v);
        else
            printf(" %s, %d, ", regname(in->a), (int)(int16_t)v);
        print_target((uint32_t)in->imm);
        break;
    }
    }
}

static void dump_data(const chbc_image *img)
{
    if (img->data_size == 0 && img->bss_size == 0)
        return;
    printf("\n; data: %u bytes at address %u, bss: %u bytes\n", img->data_size, CHBC_DATA_BASE,
           img->bss_size);
    for (uint32_t i = 0; i < img->data_size; i += 16) {
        printf("; %08x ", CHBC_DATA_BASE + i);
        uint32_t n = img->data_size - i < 16 ? img->data_size - i : 16;
        for (uint32_t k = 0; k < 16; k++) {
            if (k < n)
                printf(" %02x", img->data[i + k]);
            else
                printf("   ");
        }
        printf("  |");
        for (uint32_t k = 0; k < n; k++) {
            unsigned c = img->data[i + k];
            putchar(c >= 32 && c < 127 ? (int)c : '.');
        }
        puts("|");
    }
}

int main(int argc, char **argv)
{
    int skip_data = 0, plain = 0, i = 1;
    for (; i < argc && argv[i][0] == '-' && argv[i][1]; i++) {
        if (!strcmp(argv[i], "-s"))
            skip_data = 1;
        else if (!strcmp(argv[i], "-n"))
            plain = 1;
        else
            goto usage;
    }
    if (i != argc - 1) {
usage:
        fputs("usage: chdis [-s] [-n] file.chbc\n", stderr);
        return 64;
    }

    chbc_image img;
    uint32_t off = 0;
    chbc_err e = chbc_load(argv[i], &img);
    if (e == CHBC_OK)
        e = chbc_verify(&img, &off);
    if (e != CHBC_OK) {
        fprintf(stderr, "chdis: %s: %s (offset %u)\n", argv[i], chbc_err_str(e), off);
        chbc_free(&img);
        return 65;
    }

    uint32_t n = img.code_size / CHBC_INSN_SIZE;
    uint8_t *is_target = calloc(n ? n : 1, 1);
    if (!is_target) {
        fputs("chdis: out of memory\n", stderr);
        return 1;
    }
    is_target[img.entry / CHBC_INSN_SIZE] = 1;
    for (uint32_t k = 0; k < n; k++) {
        const chbc_insn *in = &img.code[k];
        unsigned fmt = chbc_op_fmt[in->op];
        if (!chbc_fmt_is_branch(fmt))
            continue;
        uint32_t t = (uint32_t)in->imm / CHBC_INSN_SIZE;
        is_target[t] = 1;
        if (in->op == OP_JTAB)
            for (uint32_t j = 0; j < (uint32_t)(in->b | in->c << 8) && t + j < n; j++)
                is_target[t + j] = 1;
    }

    if (plain) {
        printf(".entry L%u\n", img.entry);
    } else {
        printf("; chbc version %d, entry %u, code %u bytes (%u instructions), data %u, bss %u\n",
               CHBC_VERSION, img.entry, img.code_size, n, img.data_size, img.bss_size);
    }

    uint32_t last_line_off = UINT32_MAX;
    for (uint32_t k = 0; k < n; k++) {
        uint32_t o = k * CHBC_INSN_SIZE;
        chbc_loc loc;
        int have = chbc_lookup(&img, o, &loc);

        if (have && loc.func && loc.func_off == o)
            printf("\n; function %s (%u bytes)\n", loc.func, loc.func_size);
        if (is_target[k])
            printf("L%u:\n", o);

        if (!plain) {
            printf("  %6u  ", o);
            const uint8_t *raw = (const uint8_t *)&img.code[k];
            for (int b = 0; b < 8; b++)
                printf("%02x", raw[b]);
            printf("  ");
        } else {
            printf("    ");
        }
        print_insn(&img.code[k]);
        if (have && loc.file && loc.line_off != last_line_off && loc.line_off == o) {
            printf("%s; %s:%u", plain ? "" : "    ", loc.file, loc.line);
            last_line_off = loc.line_off;
        }
        putchar('\n');
    }

    if (!plain && !skip_data)
        dump_data(&img);

    free(is_target);
    chbc_free(&img);
    return 0;
}
