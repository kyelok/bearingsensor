# Host test harness for the BWM SPU firmware.
#
# Build & run all tests:    make
# Build only:               make build
# Clean:                    make clean

CC          := clang
CFLAGS      := -std=c99 -Wall -Wextra -Wno-unknown-pragmas -Wno-macro-redefined -g -O0
CFLAGS      += -Iplatform -Ithird_party/unity/src -Ihelpers -Ifakes

# Coverage build: `make COVERAGE=1` instruments with clang's source-based
# coverage (LLVM profile-instr + coverage-mapping). Run `make coverage`
# for the full clean→build→run→report cycle.
ifeq ($(COVERAGE),1)
CFLAGS      += -fprofile-instr-generate -fcoverage-mapping
LDFLAGS     += -fprofile-instr-generate -fcoverage-mapping
endif
# Refactored modules live in ../src/
CFLAGS      += -I../src
# Original v6.20 firmware is reference-only; not on the include path
# during the refactor. (Add back when extracting & comparing functions.)
# CFLAGS    += -I../SourceCode1/SPU_Firmware/FirmwareSource_6.20

UNITY_SRC   := third_party/unity/src/unity.c
FAKE_SRCS   := $(wildcard fakes/*.c)
# Exclude hybrid-only bridge files; they #include legacy headers
# (globals.h, man.h, fat.h) that aren't on the host include path.
SRC_EXCL    := ../src/integration/man_legacy_bridge.c \
               ../src/integration/sd_bridge.c
SRC_SRCS    := $(filter-out $(SRC_EXCL),$(wildcard ../src/*/*.c))
BUILD_DIR   := build

TEST_SRCS   := $(wildcard test/algo/*.c test/protocol/*.c test/integration/*.c)
TEST_BINS   := $(patsubst %.c,$(BUILD_DIR)/%,$(notdir $(TEST_SRCS)))

VPATH       := test/algo:test/protocol:test/integration

.PHONY: all compile clean run coverage coverage-report coverage-html

all: compile run

compile: $(TEST_BINS)

$(BUILD_DIR)/%: %.c $(UNITY_SRC) $(FAKE_SRCS) $(SRC_SRCS)
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) $(LDFLAGS) $< $(UNITY_SRC) $(FAKE_SRCS) $(SRC_SRCS) -o $@

run: compile
	@echo ""
	@echo "=== Running host test suite ==="
	@total=0; failed=0; idx=0; \
	for t in $(TEST_BINS); do \
	    total=$$((total + 1)); idx=$$((idx + 1)); \
	    echo ""; \
	    echo "--- $$t ---"; \
	    LLVM_PROFILE_FILE=$(BUILD_DIR)/cov-$$idx.profraw $$t || failed=$$((failed + 1)); \
	done; \
	echo ""; \
	echo "=== $$total binaries, $$failed failed ==="; \
	[ $$failed -eq 0 ]

clean:
	@rm -rf $(BUILD_DIR)
	@find . -name '*.gcda' -o -name '*.gcno' -o -name '*.gcov' \
	    -o -name '*.profraw' -o -name '*.profdata' -delete 2>/dev/null || true

# One-shot coverage: clean, build with COVERAGE=1, run, summarise.
coverage:
	@$(MAKE) clean
	@$(MAKE) COVERAGE=1 all
	@$(MAKE) coverage-report

# Coverage report using clang's source-based coverage (llvm-cov).
# Requires LLVM_PROFILE_FILE to have been set per-binary at run time
# (see the `run` target above). Merges all *.profraw into one .profdata,
# then summarises src/ coverage and writes an HTML report.
LLVM_COV       := $(shell xcrun --find llvm-cov 2>/dev/null || echo llvm-cov)
LLVM_PROFDATA  := $(shell xcrun --find llvm-profdata 2>/dev/null || echo llvm-profdata)
COV_PROFDATA   := $(BUILD_DIR)/coverage.profdata

coverage-report:
	@echo ""
	@echo "=== Coverage report (llvm-cov) — src/ only ==="
	@profraws=$$(ls $(BUILD_DIR)/cov-*.profraw 2>/dev/null); \
	if [ -z "$$profraws" ]; then \
		echo "No .profraw files found. Did you build with COVERAGE=1?"; \
		exit 1; \
	fi; \
	$(LLVM_PROFDATA) merge -sparse -o $(COV_PROFDATA) $$profraws
	@$(LLVM_COV) report -instr-profile=$(COV_PROFDATA) $(TEST_BINS) 2>/dev/null \
		| awk 'BEGIN { lt=0; lm=0; rt=0; rm=0 } \
		       NR==1 { print; next } \
		       /^---/ { print; next } \
		       /^src\// { print; rt+=$$2; rm+=$$3; lt+=$$8; lm+=$$9 } \
		       END { \
		         lc = (lt > 0 ? (100.0*(lt-lm)/lt) : 0); \
		         rc = (rt > 0 ? (100.0*(rt-rm)/rt) : 0); \
		         printf "------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n"; \
		         printf "src/ TOTAL                                                  %7d %15d %8.2f%%                                          %7d %15d %8.2f%%\n", \
		                rt, rm, rc, lt, lm, lc \
		       }'
	@echo ""
	@echo "Run \`make coverage-html\` for a clickable HTML report."

coverage-html:
	@$(LLVM_COV) show -instr-profile=$(COV_PROFDATA) -format=html \
		-output-dir=$(BUILD_DIR)/coverage-html \
		-show-line-counts-or-regions \
		-show-instantiations=false \
		$(TEST_BINS) ../src 2>/dev/null
	@echo "HTML coverage report: $(BUILD_DIR)/coverage-html/index.html"
