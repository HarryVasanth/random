#!/usr/bin/env bash
set -euo pipefail
s=("♠" "♥" "♦" "♣")
r=("A" "2" "3" "4" "5" "6" "7" "8" "9" "10" "J" "Q" "K")
f() {
    local l=$1 n=$2
    [[ ${#n} == 1 ]] && n=" $n"
    printf '┌─────────┐\n│%s       │\n│         │\n│    %s    │\n│         │\n│      %s │\n└─────────┘\n' "$n" "$l" "$n"
}
f "${s[RANDOM * ${#s[@]} / 32768]}" "${r[RANDOM * ${#r[@]} / 32768]}"
