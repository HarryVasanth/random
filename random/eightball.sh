#!/usr/bin/env bash
set -euo pipefail

# Ask the Magic 8-Ball a yes/no question.
answers=(
    "It is certain."
    "Without a doubt."
    "Yes, definitely."
    "Most likely."
    "Outlook good."
    "Signs point to yes."
    "Reply hazy, try again."
    "Ask again later."
    "Cannot predict now."
    "Do not count on it."
    "My reply is no."
    "Outlook not so good."
)
ball='      .-----.
     /       \
    |  (o o)  |
     \       /
      o-----o'

printf '%s\n\n  %s\n' "$ball" "${answers[RANDOM * ${#answers[@]} / 32768]}"
