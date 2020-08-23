#!/usr/bin/env bash
set -euo pipefail

# Pick a random country flag.
flags=(
    "🇯🇵 Japan"
    "🇧🇷 Brazil"
    "🇨🇦 Canada"
    "🇫🇷 France"
    "🇩🇪 Germany"
    "🇮🇳 India"
    "🇮🇹 Italy"
    "🇰🇪 Kenya"
    "🇲🇽 Mexico"
    "🇳🇱 Netherlands"
    "🇳🇿 New Zealand"
    "🇳🇴 Norway"
    "🇵🇹 Portugal"
    "🇰🇷 South Korea"
    "🇪🇸 Spain"
    "🇸🇪 Sweden"
    "🇨🇭 Switzerland"
    "🇹🇷 Türkiye"
    "🇬🇧 United Kingdom"
    "🇺🇸 United States"
)

printf '%s\n' "${flags[RANDOM * ${#flags[@]} / 32768]}"
