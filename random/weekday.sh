#!/usr/bin/env bash
set -euo pipefail

# Pick a random day of the week.
days=(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)

printf '  📅 %s\n' "${days[RANDOM * ${#days[@]} / 32768]}"
