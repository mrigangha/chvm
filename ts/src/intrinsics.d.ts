// Declarations of the intrinsics, for tsc only. The chts compiler knows them already.
// Types are 'number' or 'any', and 'void' for no result.

declare function __ldi(a0: number): number
declare function __ldf(a0: number): number
declare function __ldp(a0: number): any
declare function __ld8(a0: number): number
declare function __sti(a0: number, a1: number): void
declare function __stf(a0: number, a1: number): void
declare function __stp(a0: number, a1: any): void
declare function __st8(a0: number, a1: number): void
declare function __toaddr(a0: any): number
declare function __fromaddr(a0: number): any
declare function __memcpy(a0: number, a1: number, a2: number): void
declare function __memcmp(a0: number, a1: number, a2: number): number
declare function __memset(a0: number, a1: number, a2: number): void
declare function __sbrk(a0: number): number
declare function __alloc_vm(a0: number): number
declare function __write(a0: number, a1: number, a2: number): number
declare function __read(a0: number, a1: number, a2: number): number
declare function __open(a0: number, a1: number, a2: number): number
declare function __close(a0: number): number
declare function __argc(): number
declare function __argv(a0: number, a1: number, a2: number): number
declare function __spawn(a0: number, a1: number): number
declare function __exit(a0: number): void
declare function __fmtnum(a0: number, a1: number, a2: number): number
declare function __parsenum(a0: number, a1: number): number
declare function __trap(): void
