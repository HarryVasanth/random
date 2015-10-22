#!/usr/bin/env bash
set -euo pipefail

# Pick a random emoji.
emoji=(
    "😀 grin"
    "😂 tears of joy"
    "🤔 thinking"
    "😎 cool"
    "🥳 party"
    "🤯 mind blown"
    "🐙 octopus"
    "🦊 fox"
    "🌵 cactus"
    "🍕 pizza"
    "🚀 rocket"
    "🎲 dice"
)

printf '%s\n' "${emoji[RANDOM * ${#emoji[@]} / 32768]}"
