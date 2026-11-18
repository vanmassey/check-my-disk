#!/usr/bin/env bash
set -euo pipefail

THRESHOLD="${1:-80}"
TARGET="${2:-/}"

read -r USED AVAIL PCT <<< "$(df -hP "$TARGET" | awk 'NR==2 {gsub(/%/,"",$5); print $3, $4, $5}')"

if [ "$PCT" -ge "$THRESHOLD" ]; then
    echo "WARNING: $TARGET is ${PCT}% full (${USED} used, ${AVAIL} available) — exceeds ${THRESHOLD}% threshold!"
    echo "Top space-consuming directories in $TARGET:"
    du -xh --max-depth=1 "$TARGET" 2>/dev/null | sort -hr | head -n 4
    exit 1
fi

echo "OK: $TARGET is ${PCT}% full (${USED} used, ${AVAIL} available)"
exit 0
