#!/usr/bin/env bash
set -euo pipefail

# Print a random quote.
quotes=(
    "Make it work, make it right, make it fast."
    "Premature optimization is the root of all evil."
    "Simplicity is prerequisite for reliability."
    "Deleted code is debugged code."
    "Talk is cheap. Show me the code."
    "Programs must be written for people to read."
    "Done is better than perfect."
    "The cheapest, fastest, most reliable component is the one that is not there."
)

printf '  "%s"\n' "${quotes[RANDOM * ${#quotes[@]} / 32768]}"
