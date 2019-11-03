#!/usr/bin/env bash
set -euo pipefail

# Pick a random planet of the Solar System.
planets=(Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune)
orbit='      .      *
    .   |   .
  *  --- O ---  *
    .   |   .
      .      *'

printf '%s\n\n  %s\n' "$orbit" "${planets[RANDOM * ${#planets[@]} / 32768]}"
