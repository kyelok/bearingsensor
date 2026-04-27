# Host test harness for the BWM SPU firmware.
#
# Build & run all tests:    make
# Build only:               make build
# Clean:                    make clean

CC          := clang
CFLAGS      := -std=c99 -Wall -Wextra -Wno-unknown-pragmas -Wno-macro-redefined -g -O0
CFLAGS      += -Iplatform -Ithird_party/unity/src -Ihelpers -Ifakes

# Coverage build: `make COVERAGE=1` produces gcov-instrumented binaries.
# After running, use `gcov path/to/binary` or `lcov` to generate reports.
ifeq ($(COVERAGE),1)
CFLAGS      += -fprofile-arcs -ftest-coverage
LDFLAGS     += -fprofile-arcs -ftest-coverage
endif
# Refactored modules live in ../src/
CFLAGS      += -I../src
# Original v6.20 firmware is reference-only; not on the include path
# during the refactor. (Add back when extracting & comparing functions.)
# CFLAGS    += -I../SourceCode1/SPU_Firmware/FirmwareSource_6.20

UNITY_SRC   := third_party/unity/src/unity.c
FAKE_SRCS   := $(wildcard fakes/*.c)
SRC_SRCS    := $(wildcard ../src/*/*.c)
BUILD_DIR   := build

TEST_SRCS   := $(wildcard test/algo/*.c test/protocol/*.c test/integration/*.c)
TEST_BINS   := $(patsubst %.c,$(BUILD_DIR)/%,$(notdir $(TEST_SRCS)))

VPATH       := test/algo:test/protocol:test/integration

.PHONY: all compile clean run

all: compile run

compile: $(TEST_BINS)

$(BUILD_DIR)/%: %.c $(UNITY_SRC) $(FAKE_SRCS) $(SRC_SRCS)
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) $(LDFLAGS) $< $(UNITY_SRC) $(FAKE_SRCS) $(SRC_SRCS) -o $@

run: compile
	@echo ""
	@echo "=== Running host test suite ==="
	@total=0; failed=0; \
	for t in $(TEST_BINS); do \
	    total=$$((total + 1)); \
	    echo ""; \
	    echo "--- $$t ---"; \
	    if ! $$t; then failed=$$((failed + 1)); fi; \
	done; \
	echo ""; \
	echo "=== $$total binaries, $$failed failed ==="; \
	[ $$failed -eq 0 ]

clean:
	@rm -rf $(BUILD_DIR)
	@find . -name '*.gcda' -o -name '*.gcno' -o -name '*.gcov' -delete 2>/dev/null || true

# Coverage report — assumes `make COVERAGE=1` was run first.
coverage-report:
	@echo "Generating gcov reports for src/ files..."
	@for src in $$(find ../src -name '*.c'); do \
		gcov -o $(BUILD_DIR) -p $$src 2>/dev/null | head -3; \
	done
	@echo ""
	@echo "Coverage summary (per source file):"
	@for f in *.gcov; do \
		test -f "$$f" || continue; \
		executed=$$(grep -c '^\s*[1-9]' $$f 2>/dev/null || echo 0); \
		uncovered=$$(grep -c '^\s*#####' $$f 2>/dev/null || echo 0); \
		total=$$((executed + uncovered)); \
		[ $$total -gt 0 ] && pct=$$((100 * executed / total)) || pct=0; \
		printf "  %-50s %3d%% (%d/%d lines)\n" "$$f" $$pct $$executed $$total; \
	done | head -30
