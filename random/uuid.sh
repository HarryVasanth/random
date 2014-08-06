#!/usr/bin/env bash
set -euo pipefail

# Print a random (version 4) UUID.
if ! command -v uuidgen >/dev/null; then
    echo "uuidgen not found" >&2
    exit 1
fi

uuidgen | tr '[:upper:]' '[:lower:]'
