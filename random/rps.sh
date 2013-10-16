#!/usr/bin/env bash
set -euo pipefail

# Draw a hand of rock, paper or scissors.
names=(ROCK PAPER SCISSORS)
hands=(
    "    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)"
    "     _______
---'    ____)____
           ______)
          _______)
         _______)
---.__________)"
    "    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)"
)

i=$((RANDOM * ${#hands[@]} / 32768))
printf '%s\n\n  %s\n' "${hands[i]}" "${names[i]}"
