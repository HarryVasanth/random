#!/usr/bin/env bash
set -euo pipefail

# Pick a random letter of the alphabet.
letters=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

printf '  +---+\n  | %s |\n  +---+\n' "${letters[RANDOM * ${#letters[@]} / 32768]}"
