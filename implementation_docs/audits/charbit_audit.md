# `CHAR_BIT` Audit — v6.20 SPU Firmware

**Generated**: 2026-04-27 (Phase 0.5)

## Background

On the TI TMS320F2811 (C2000 DSP) the C compiler defines:

```
sizeof(char) == sizeof(short) == sizeof(int) == 1   (where 1 unit == 16 bits)
CHAR_BIT == 16
```

On the macOS host (clang on arm64) and on Linux x86_64:

```
sizeof(char) == 1                (8 bits)
sizeof(short) == 2               (16 bits)
sizeof(int) == 4                 (32 bits)
CHAR_BIT == 8
```

This means the *exact same* `.c` file compiled for both targets will compute different values from `sizeof()` and will copy a different number of physical bytes when `memcpy(dst, src, sizeof(struct_t))` is invoked. That is the central risk this audit catalogues: code that quietly passes target unit tests on host while shipping broken on chip, or vice versa.

**Mitigation**: The `host/platform/platform.h` shim provides `Uint16` / `Int16` / `Uint32` / `Int32` typedefs that are width-stable across both targets. Application code (after refactor) should prefer these. Where firmware uses bare `int` or `unsigned int`, behavior may diverge.

---

## Call-site counts

| Pattern | Count | Distribution |
|---|---|---|
| `sizeof(...)` references | 199 in `*.c` | bulk in HCC FAT FS (out of scope) — see breakdown below |
| `mem{cpy,move,set,cmp}` calls | 51 in `*.c` | many are `memset(eventstring, 0, EVENTMSG_LEN_INBYTES_PART2)` — a constant byte length |

### `sizeof` distribution by file

| File | Count | In scope? |
|---|---|---|
| `common.c` | 41 | ❌ third-party HCC FAT FS |
| `sdcard.c` | 28 | ⚠️ application — needs review |
| `fat_lfn.c` | 27 | ❌ third-party HCC FAT FS |
| `fat.c` | 12 | ❌ third-party HCC FAT FS |
| `utils.c` | 9 | ✅ application |
| `spi.c` | 9 | ✅ application |
| `man.c` | 9 | ✅ **PRIMARY REFACTOR TARGET** |
| `adc.c` | 8 | ✅ application |
| `test.c` | 7 | ❌ test code, not shipped |
| `mancal.c` | 6 | ✅ application |
| `chkdsk.c` | 6 | ❌ third-party HCC FAT FS |
| `logging.c` | 3 | ✅ application |
| `wio.c` | 2 | ✅ application |
| `setup.c` | 2 | ✅ application |
| `mmc_mcf.c` | 2 | ⚠️ SD-card driver, partly third-party |
| `fat_m.c` | 1 | ❌ HCC FAT FS |

**In-scope total**: ~78 sites across `man.c`, `mancal.c`, `adc.c`, `sdcard.c`, `utils.c`, `spi.c`, `logging.c`, `wio.c`, `setup.c`. These are what the refactor will touch.

---

## NVMEM API contract (the most load-bearing word/byte ambiguity)

```c
/* spi.h:201–202 */
void WriteNVMemory(unsigned int choice, unsigned int position, unsigned int *ptr, unsigned int len);
void ReadNVMemory (unsigned int choice, unsigned int position, unsigned int *ptr, unsigned int len);
```

`ptr` is `unsigned int *`; `len` is the count in **`unsigned int` words** (not bytes). On TI: `sizeof(unsigned int) == 1 word == 16 bits`, so `len = sizeof(structname)` happens to be the right value. On host: `sizeof(unsigned int) == 4`, so `len = sizeof(structname)` would be **4× too large** in word units (or, equivalently, double-counted bytes).

**Implication**: Every call site passing `len = sizeof(...)` to NVMEM is a CHAR_BIT-coupled site. We don't break it on TI, but on host we must either (a) wrap NVMEM behind a fake that re-interprets the length, or (b) refactor call sites to use a target-portable `WORDS_OF(struct_t)` macro.

### Confirmed `sizeof()`-to-`len` sites in `man.c`

| Line | Code | Word/byte risk |
|---|---|---|
| 560 | `for(j=0; j<sizeof(sensorstruct); j++) ptr[j] = 0;` | **Latent**. `ptr` is `unsigned int *`, but `sizeof(sensorstruct)` is in different units on host vs. target. On host, the loop walks 4× the intended distance. |
| 638 | `len = sizeof(enginestruct);` (then passed to `ReadNVMemory`) | **Latent**. NVMEM expects word count; `sizeof` returns byte count on host. |
| 654 | `len = sizeof(enginestruct);` (`WriteNVMemory`) | Same as above. |
| 1780 | `len = sizeof(damagemonstruct);` | Same. |
| 1803 | `len = sizeof(damagemonstruct);` | Same. |
| 2380 | `len = sizeof(allsensorstruct);` | Same. |
| 2397 | `len = sizeof(allsensorstruct);` | Same. |
| 2907 | `len = sizeof(prewarnstruct);` | Same. |
| 2924 | `len = sizeof(prewarnstruct);` | Same. |

### Confirmed `memset` smoking gun

```c
/* sdcard.c:653, 709 */
memset(intbuf, 0, SD_LOGENTRY_LEN_WORDS);   /* clear to zero */
```

The third argument is named `LEN_WORDS` — a word count. `memset` takes a *byte* count. On TI: 1 word == 1 byte, fine. On host: 1 word == 2 bytes, so this clears only half the buffer. **Latent bug** if we run this code path on host.

---

## Common `sizeof()` targets (in firmware, by occurrence)

```
  43 sizeof(F_DIRENTRY)            -- HCC FAT FS, out of scope
  11 sizeof(F_POS)                 -- HCC FAT FS
   9 sizeof(truncate_tmp)          -- HCC FAT FS
   8 sizeof(struct_TestFileSysEntry) -- test.c, out of scope
   4 sizeof(wiosettingsstruct)     -- application; subject to refactor
   4 sizeof(speedcompstruct)       -- application; SPEC-CRITICAL (compensation curve)
   4 sizeof(slemsettingsstruct)    -- application
   4 sizeof(shorttermlogstruct)    -- application; storage requirement (spec 6.x)
   4 sizeof(sensorMovingstruct)    -- application
   4 sizeof(dcmodechecksstruct)    -- application
   4 sizeof(damagemonstruct)       -- application; rapid-wear state
   4 sizeof(cppsettingsstruct)     -- application
   4 sizeof(configstruct)          -- application
   4 sizeof(calibrationdatetimestruct) -- application
   4 sizeof(allsensorstruct)       -- application; sensor channel array
```

Each of these structs is **a candidate for a `test_struct_layout.c` host test**. The test should assert on the host build: `sizeof(struct) * BYTES_PER_WORD == EXPECTED_BYTES_ON_TI` where `EXPECTED_BYTES_ON_TI` is captured once on real hardware (or computed from a Python script that walks the field declarations).

---

## Action items (deferred, recorded here)

1. **Define `WORDS_OF(t)`** in `platform.h`:
   ```c
   #if defined(__TMS320C2000__)
     #define WORDS_OF(t)  sizeof(t)         /* on TI: sizeof returns word count */
   #else
     #define WORDS_OF(t)  ((sizeof(t) + 1) / 2)  /* on host: pack 8-bit bytes into 16-bit words */
   #endif
   ```
   Refactor every NVMEM `len = sizeof(...)` site to `len = WORDS_OF(...)`. Both targets compile to the right value.

2. **Add `test_struct_layout.c`** in `host/test/algo/`. For each struct in the "common sizeof targets" list above, assert the on-host word count matches the expected on-target word count. Initial expected values: derived by inspection now; later, dump from real hardware over UART and lock in.

3. **Audit sdcard.c memset/memcpy line by line.** All `_LEN_WORDS` style suffixes are smoking guns. ~30 minutes of careful work.

4. **Wrap `ReadNVMemory` / `WriteNVMemory`** behind a host fake (`fakes/fake_nvmem.{c,h}`) that interprets `len` as a word count regardless of the host model. This is required before any test that exercises an NVMEM call site can run on host.

5. **Document** in each refactored module's header that integers cross the host-target boundary as `Uint16` / `Int16` and that struct layouts are word-stable across targets only when fields are typed with the platform.h typedefs.

---

## Conclusion

The CHAR_BIT divergence is a real and present source of latent host-vs-target bugs. It does not block the immediate refactor (because v6.20 already runs correctly on the TI target), but it *will* mask incorrect tests until we add struct-layout assertions and wrap NVMEM. The action items above are the regression net.

The next step (Phase 0.5 follow-on, after first wave of unit tests) is to write `test_struct_layout.c` and `fake_nvmem.{c,h}` so that any future PR that breaks word/byte assumptions fails the host build.
