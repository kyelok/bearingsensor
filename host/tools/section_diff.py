#!/usr/bin/env python3
"""
section_diff.py — compare two TI CGT linker map files section-by-section.

Per PR review F-11: BUILD_VERIFICATION.md needed a more granular check
than just total memory-region usage. This tool parses the SECTION
ALLOCATION MAP block in TI CGT linker output and produces a per-section
size comparison between two builds.

Usage:
    python3 host/tools/section_diff.py BASELINE.map CANDIDATE.map [--threshold 10]

  --threshold N    flag any section that differs by more than N% (default: 10).

Exit code: 1 if any section exceeds threshold; 0 otherwise.

Example:
    # After running both builds:
    python3 host/tools/section_diff.py \
        build/legacy/bearingwear.map \
        build/legacy_at_O1/bearingwear.map
"""

import argparse
import re
import sys
from pathlib import Path


SECTION_LINE_RE = re.compile(
    r'^\.(\S+)\s+\d\s+([0-9a-f]+)\s+([0-9a-f]+)\s'
)


def parse_map(map_path: Path) -> dict:
    """Return {section_name: total_size_in_words}."""
    sections = {}
    in_alloc_block = False
    with map_path.open() as f:
        for line in f:
            if 'SECTION ALLOCATION MAP' in line:
                in_alloc_block = True
                continue
            if in_alloc_block:
                m = SECTION_LINE_RE.match(line)
                if m:
                    name = m.group(1)
                    size = int(m.group(3), 16)
                    sections[f'.{name}'] = sections.get(f'.{name}', 0) + size
                if 'MODULE SUMMARY' in line:
                    break
    return sections


def diff_pct(old: int, new: int) -> float:
    if old == 0:
        return 0.0 if new == 0 else 100.0
    return 100.0 * (new - old) / old


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("baseline", type=Path, help="baseline .map file")
    parser.add_argument("candidate", type=Path, help="candidate .map file to compare")
    parser.add_argument("--threshold", type=float, default=10.0,
                        help="flag sections differing by more than this percent")
    args = parser.parse_args()

    if not args.baseline.exists():
        print(f"ERROR: baseline {args.baseline} not found", file=sys.stderr)
        return 2
    if not args.candidate.exists():
        print(f"ERROR: candidate {args.candidate} not found", file=sys.stderr)
        return 2

    base = parse_map(args.baseline)
    cand = parse_map(args.candidate)

    all_sections = sorted(set(base.keys()) | set(cand.keys()))

    print(f"\n{'Section':<22} {'Baseline':>10} {'Candidate':>10} {'Δ words':>10} {'Δ %':>10}  Notes")
    print("-" * 90)

    flagged = 0
    for sec in all_sections:
        b = base.get(sec, 0)
        c = cand.get(sec, 0)
        delta_words = c - b
        delta_pct = diff_pct(b, c)
        flag = ""
        if abs(delta_pct) > args.threshold:
            flag = f"⚠ exceeds {args.threshold}% threshold"
            flagged += 1
        elif b == 0 and c > 0:
            flag = "NEW section in candidate"
            flagged += 1
        elif c == 0 and b > 0:
            flag = "REMOVED section in candidate"
            flagged += 1
        print(f"{sec:<22} {b:>10} {c:>10} {delta_words:>+10d} {delta_pct:>+9.1f}%  {flag}")

    base_total = sum(base.values())
    cand_total = sum(cand.values())
    print("-" * 90)
    print(f"{'TOTAL':<22} {base_total:>10} {cand_total:>10} {cand_total-base_total:>+10d} "
          f"{diff_pct(base_total, cand_total):>+9.1f}%")

    print(f"\nFlagged sections: {flagged}")
    print(f"Threshold: ±{args.threshold}%")

    return 1 if flagged > 0 else 0


if __name__ == "__main__":
    sys.exit(main())
