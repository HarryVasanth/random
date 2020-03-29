#!/usr/bin/env bash
set -euo pipefail

# Pick a random chemical element.
numbers=(1 2 3 6 8 10 11 13 14 20 26 47 79)
symbols=(H He Li C O Ne Na Al Si Ca Fe Ag Au)
names=(Hydrogen Helium Lithium Carbon Oxygen Neon Sodium Aluminium Silicon Calcium Iron Silver Gold)

i=$((RANDOM * ${#names[@]} / 32768))
printf '┌─────┐\n│ %3s │\n│ %2s  │\n└─────┘\n  %s\n' \
    "${numbers[i]}" "${symbols[i]}" "${names[i]}"
