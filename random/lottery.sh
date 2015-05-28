#!/usr/bin/env bash
set -euo pipefail

# Draw six unique lottery numbers from 1 to 49.
numbers=()
for ((i = 0; i < 49; i++)); do
    numbers[i]=$((i + 1))
done

# Fisher-Yates shuffle, then keep the first six.
for ((i = 48; i > 0; i--)); do
    j=$((RANDOM * (i + 1) / 32768))
    tmp=${numbers[i]}
    numbers[i]=${numbers[j]}
    numbers[j]=$tmp
done

printf '%s\n' "${numbers[@]:0:6}" | sort -n | paste -sd ' ' -
