#!/usr/bin/env bash
set -euo pipefail

# Pick a random I Ching trigram, drawn bottom line first.
# Index i is the line pattern with bit 0 at the bottom.
names=("☷ Earth" "☶ Mountain" "☵ Water" "☴ Wind" "☳ Thunder" "☲ Fire" "☱ Lake" "☰ Heaven")
i=$((RANDOM * 8 / 32768))

for bit in 0 1 2; do
    if (((i >> bit) & 1)); then
        printf '  ━━━━━━━\n'
    else
        printf '  ━━━ ━━━\n'
    fi
done
printf '\n  %s\n' "${names[i]}"
