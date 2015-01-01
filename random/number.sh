#!/usr/bin/env bash
set -euo pipefail

# Print a random integer. Usage: number.sh [min] [max] (default 0 100)
min=${1:-0}
max=${2:-100}
if [[ ! $min =~ ^-?[0-9]+$ || ! $max =~ ^-?[0-9]+$ ]]; then
    echo "usage: ${0##*/} [min] [max]" >&2
    exit 1
fi
if ((min > max)); then
    echo "min ($min) must not be greater than max ($max)" >&2
    exit 1
fi

# shortcut: RANDOM only spans 32768 values, so wider ranges are not uniform.
span=$((max - min + 1))
printf '%s\n' "$((min + RANDOM * span / 32768))"
