#!/usr/bin/env bash
set -euo pipefail

# Pick a random zodiac sign.
signs=(Aries Taurus Gemini Cancer Leo Virgo Libra Scorpio Sagittarius Capricorn Aquarius Pisces)
dates=(
    "Mar 21 - Apr 19" "Apr 20 - May 20" "May 21 - Jun 20" "Jun 21 - Jul 22"
    "Jul 23 - Aug 22" "Aug 23 - Sep 22" "Sep 23 - Oct 22" "Oct 23 - Nov 21"
    "Nov 22 - Dec 21" "Dec 22 - Jan 19" "Jan 20 - Feb 18" "Feb 19 - Mar 20"
)
stars='    *
   / \
  *---*
   \ /
    *'

i=$((RANDOM * ${#signs[@]} / 32768))
printf '%s\n\n  %s (%s)\n' "$stars" "${signs[i]}" "${dates[i]}"
