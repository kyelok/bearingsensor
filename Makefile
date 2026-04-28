# Top-level convenience Makefile.
#
# Delegates to:
#   host/Makefile                  — host test harness (clang + Unity)
#   build/Makefile.cross           — TI CGT: refactored src/ only (no integration)
#   build/Makefile.legacy.cross    — TI CGT: legacy v6.20 (with patches)
#   build/Makefile.hybrid          — TI CGT: legacy infra + src/ algorithms
#                                            (placeholder modal/alarm — bench bring-up)
#   build/Makefile.hybrid_pristine — TI CGT: legacy infra + src/ algorithms
#                                            (spec-pristine modal histogram + alarm
#                                            latching — v8.7-spec target)

.PHONY: all test coverage docs cross legacy hybrid hybrid_pristine binaries clean help

help:
	@echo "Available targets:"
	@echo "  make test             — build & run host test suite"
	@echo "  make coverage         — build with instrumentation, print src/ coverage"
	@echo "  make docs             — generate Doxygen API docs (docs/html/index.html)"
	@echo "  make cross            — cross-compile refactored src/ alone (24 KB .a00)"
	@echo "  make legacy           — cross-compile legacy v6.20 (446 KB .a00)"
	@echo "  make hybrid           — legacy infra + src/ algorithms, placeholder modal/alarm"
	@echo "  make hybrid_pristine  — legacy infra + src/ algorithms, spec-pristine modal+latch"
	@echo "  make binaries         — build all four firmware variants"
	@echo "  make clean            — clean all build artifacts"

all: test binaries

test:
	$(MAKE) -C host

coverage:
	$(MAKE) -C host coverage

docs:
	@which doxygen >/dev/null || (echo "doxygen not found; install: brew install doxygen" && exit 1)
	doxygen Doxyfile
	@echo "Generated: docs/html/index.html"

cross:
	$(MAKE) -f build/Makefile.cross

legacy:
	$(MAKE) -f build/Makefile.legacy.cross

hybrid:
	$(MAKE) -f build/Makefile.hybrid

hybrid_pristine:
	$(MAKE) -f build/Makefile.hybrid_pristine

binaries: legacy cross hybrid hybrid_pristine
	@echo ""
	@echo "=== Firmware binaries ==="
	@printf "  %-50s %10s\n" "build/legacy/bearingwear.a00"             "$$(wc -c < build/legacy/bearingwear.a00) bytes"
	@printf "  %-50s %10s\n" "build/src/bwm.a00"                        "$$(wc -c < build/src/bwm.a00) bytes"
	@printf "  %-50s %10s\n" "build/hybrid/bwm_hybrid.a00"               "$$(wc -c < build/hybrid/bwm_hybrid.a00) bytes"
	@printf "  %-50s %10s\n" "build/hybrid_pristine/bwm_hybrid_pristine.a00" "$$(wc -c < build/hybrid_pristine/bwm_hybrid_pristine.a00) bytes"

clean:
	$(MAKE) -C host clean
	$(MAKE) -f build/Makefile.cross clean 2>/dev/null || true
	$(MAKE) -f build/Makefile.legacy.cross clean 2>/dev/null || true
	$(MAKE) -f build/Makefile.hybrid clean 2>/dev/null || true
	$(MAKE) -f build/Makefile.hybrid_pristine clean 2>/dev/null || true
	rm -rf docs/html docs/latex
