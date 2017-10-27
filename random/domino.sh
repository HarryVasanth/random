#!/usr/bin/env bash
set -euo pipefail

# Draw a domino tile with two random halves (0-6).
a=$((RANDOM * 7 / 32768))
b=$((RANDOM * 7 / 32768))

printf '┌───────┐\n│       │\n│   %d   │\n├───────┤\n│       │\n│   %d   │\n└───────┘\n' "$a" "$b"
