#!/usr/bin/env bash
set -euo pipefail

# Generate a random password. Usage: password.sh [length] (1-128, default 16)
length=${1:-16}
if [[ ! $length =~ ^[0-9]+$ ]] || ((length < 1 || length > 128)); then
    echo "usage: ${0##*/} [length 1-128]" >&2
    exit 1
fi

chars='A-Za-z0-9!@#$%^&*()_+-='
# head closes the pipe early, so ignore the SIGPIPE that would trip pipefail.
password=$(
    set +o pipefail
    LC_ALL=C tr -dc "$chars" </dev/urandom | head -c "$length"
)
printf '%s\n' "$password"
