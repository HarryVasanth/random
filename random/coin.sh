#!/usr/bin/env bash
set -euo pipefail

# Flip a coin.
faces=(
    '    ___
   /   \
  |HEADS|
   \___/'
    '    ___
   /   \
  |TAILS|
   \___/'
)

printf '%s\n' "${faces[RANDOM * ${#faces[@]} / 32768]}"
