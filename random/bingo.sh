#!/usr/bin/env bash
set -euo pipefail

# Call a random bingo number (B1..O75).
letters=(B I N G O)
n=$((RANDOM * 75 / 32768))

printf '  ┌─────┐\n  │ %s%-2d │\n  └─────┘\n' "${letters[n / 15]}" "$((n + 1))"
