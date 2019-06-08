#!/usr/bin/env bash
set -euo pipefail

# Pick a random month.
months=(
    January February March April May June
    July August September October November December
)

printf '  🗓  %s\n' "${months[RANDOM * ${#months[@]} / 32768]}"
