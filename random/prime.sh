#!/usr/bin/env bash
set -euo pipefail

# Pick a random prime number below 100.
primes=(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)

printf '  %d is prime\n' "${primes[RANDOM * ${#primes[@]} / 32768]}"
