/*
 * platform.h — host vs. target shims for the BWM SPU firmware.
 *
 * On the TI C2000 target build (TMS320F2811), TI's compiler defines
 * __TMS320C2000__ and the codebase compiles directly against the original
 * register-level TI headers. On the macOS / Linux host build (clang or gcc),
 * we are running unit tests, so we macro the TI-specific keywords and
 * pragmas to no-ops and provide stdint-backed typedefs.
 *
 * Application *.c files include this file once. They are not expected to
 * branch on host vs. target themselves.
 *
 * IMPORTANT: On TI C28x, sizeof(char) == sizeof(short) == 1, and that 1
 * unit is 16 bits. On host (clang, gcc, x86, arm64) char is 8 bits. Code
 * that passes byte-counts to memcpy() vs. word-counts will behave
 * differently on the two targets. struct-layout assertion tests at
 * host/test/algo/test_struct_layout.c are the regression net for this.
 */

#ifndef BWM_PLATFORM_H
#define BWM_PLATFORM_H

#if defined(__TMS320C2000__)

  /* Production target build under TI CGT-C2000. Everything below is what
   * the original v6.20 firmware relied on; nothing changes for the chip. */
  typedef unsigned int   Uint16;
  typedef int            Int16;
  typedef unsigned long  Uint32;
  typedef long           Int32;

#else

  /* Host build: clang on macOS arm64 or gcc on Linux x86_64. */
  #include <stdint.h>

  typedef uint16_t Uint16;
  typedef int16_t  Int16;
  typedef uint32_t Uint32;
  typedef int32_t  Int32;

  /* TI-specific keywords vanish on host. */
  #define interrupt
  #define __interrupt
  #define near
  #define far
  #define cregister

  /* TI's EALLOW / EDIS guard register-write protection. No-op on host. */
  #define EALLOW   ((void)0)
  #define EDIS     ((void)0)

  /* Clang ignores #pragma DATA_SECTION / CODE_SECTION with a warning;
   * silenced project-wide by -Wno-unknown-pragmas in the Makefile. We
   * do NOT macro them because they are part of the source tree and
   * the warning is informational only. */

#endif

#endif /* BWM_PLATFORM_H */
