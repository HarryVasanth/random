#!/usr/bin/env bash
set -euo pipefail

# Hand out a random compliment.
compliments=(
    "You make hard problems look easy."
    "Your commits are suspiciously tidy."
    "You have excellent taste in scripts."
    "The team is luckier with you on it."
    "You ask the questions nobody else dares to."
    "Your code reviews make people better."
    "You ship, and you ship well."
    "You have a gift for keeping things simple."
    "Your patience is a real feature."
    "You are the person others copy from."
)

printf '  %s\n' "${compliments[RANDOM * ${#compliments[@]} / 32768]}"
