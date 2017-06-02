#!/usr/bin/env bash
set -euo pipefail

# Draw a random Major Arcana tarot card.
cards=(
    "0 - The Fool"
    "I - The Magician"
    "II - The High Priestess"
    "III - The Empress"
    "IV - The Emperor"
    "V - The Hierophant"
    "VI - The Lovers"
    "VII - The Chariot"
    "VIII - Strength"
    "IX - The Hermit"
    "X - Wheel of Fortune"
    "XI - Justice"
    "XII - The Hanged Man"
    "XIII - Death"
    "XIV - Temperance"
    "XV - The Devil"
    "XVI - The Tower"
    "XVII - The Star"
    "XVIII - The Moon"
    "XIX - The Sun"
    "XX - Judgement"
    "XXI - The World"
)
card='┌─────────┐
│  ~ * ~  │
│   TAROT │
│  ~ * ~  │
└─────────┘'

printf '%s\n   %s\n' "$card" "${cards[RANDOM * ${#cards[@]} / 32768]}"
