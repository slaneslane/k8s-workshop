#!/usr/bin/env bash
set -euo pipefail

if [ $# -ne 1 ]; then
  echo "Usage: $0 <challenge-name>"
  exit 1
fi

CHALLENGE="$1"
DIR="challenges/${CHALLENGE}"

if [ ! -d "$DIR" ]; then
  echo "Challenge not found: $DIR"
  exit 1
fi

echo "Deleting: $CHALLENGE"
kubectl delete -f "$DIR" --ignore-not-found=true || true
