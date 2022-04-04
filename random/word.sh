#!/usr/bin/env bash
set -euo pipefail

# Pick a random word.
words=(
    apple bridge candle desert ember forest garden harbour island
    jungle kettle lantern meadow nectar orchard pebble quiver river
    saddle timber umbrella valley walnut yellow zephyr
)

printf '  "%s"\n' "${words[RANDOM * ${#words[@]} / 32768]}"
