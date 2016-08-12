#!/usr/bin/env bash
set -euo pipefail

# Crack open a fortune cookie.
fortunes=(
    "A pleasant surprise is waiting for you."
    "Good things come to those who ship."
    "Your hard work will soon pay off."
    "An old friend will bring you news."
    "The best time to start was yesterday."
    "You will travel to an unexpected place."
    "Simplicity is the ultimate sophistication."
    "A small change today saves hours tomorrow."
    "Luck is on your side this week."
    "Someone is rooting for you quietly."
)
cookie='    .-------.
   /         \
  |  (o) (o)  |
   \    ^    /
    o-------o'

printf '%s\n\n  %s\n' "$cookie" "${fortunes[RANDOM * ${#fortunes[@]} / 32768]}"
