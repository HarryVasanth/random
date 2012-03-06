#!/usr/bin/env bash
set -euo pipefail

# Faces are ordered 1-6, so index i holds the face for roll i + 1.
dice_faces=(
    "+-------+
|       |
|   o   |
|       |
+-------+"
    "+-------+
| o     |
|       |
|     o |
+-------+"
    "+-------+
| o     |
|   o   |
|     o |
+-------+"
    "+-------+
| o   o |
|       |
| o   o |
+-------+"
    "+-------+
| o   o |
|   o   |
| o   o |
+-------+"
    "+-------+
| o o o |
|       |
| o o o |
+-------+"
)

printf '%s\n' "${dice_faces[RANDOM * ${#dice_faces[@]} / 32768]}"
