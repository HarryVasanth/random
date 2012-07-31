#!/usr/bin/env bash
set -euo pipefail

card_suits=("♠" "♥" "♦" "♣")
card_ranks=("A" "2" "3" "4" "5" "6" "7" "8" "9" "10" "J" "Q" "K")

suit=${card_suits[RANDOM * ${#card_suits[@]} / 32768]}
rank=${card_ranks[RANDOM * ${#card_ranks[@]} / 32768]}

# Pad single-character ranks so both corners of the card line up.
[[ ${#rank} == 1 ]] && rank=" $rank"

printf '┌─────────┐\n│%s       │\n│         │\n│    %s    │\n│         │\n│      %s │\n└─────────┘\n' \
    "$rank" "$suit" "$rank"
