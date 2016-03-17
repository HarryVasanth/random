#!/usr/bin/env bash
set -euo pipefail

# Print a random colour with a matching terminal swatch.
r=$((RANDOM * 256 / 32768))
g=$((RANDOM * 256 / 32768))
b=$((RANDOM * 256 / 32768))

printf '\033[48;2;%d;%d;%dm      \033[0m  #%02x%02x%02x\n' "$r" "$g" "$b" "$r" "$g" "$b"
