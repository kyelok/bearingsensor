# Top-level convenience Makefile.
#
# Delegates to:
#   host/Makefile         — host test harness (clang + Unity)
#   build/Makefile.cross  — TI CGT cross-compile of refactored src/
#   build/Makefile.legacy.cross — TI CGT cross-compile of legacy v6.20

.PHONY: all test coverage docs cross legacy clean help

help:
	@echo "Available targets:"
	@echo "  make test       — build & run host test suite"
	@echo "  make coverage   — build with instrumentation, run tests, print src/ coverage"
	@echo "  make docs       — generate Doxygen API docs (docs/html/index.html)"
	@echo "  make cross      — cross-compile refactored src/ to .a00 (TI CGT)"
	@echo "  make legacy     — cross-compile legacy v6.20 to .a00 (TI CGT)"
	@echo "  make clean      — clean all build artifacts"

all: test cross

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

clean:
	$(MAKE) -C host clean
	$(MAKE) -f build/Makefile.cross clean 2>/dev/null || true
	$(MAKE) -f build/Makefile.legacy.cross clean 2>/dev/null || true
	rm -rf docs/html docs/latex
