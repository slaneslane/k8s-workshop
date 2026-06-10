#!/usr/bin/env bash
set -euo pipefail

if [ $# -ne 1 ]; then
  echo "Usage: $0 <challenge-name>"
  echo
  echo "Available challenges:"
  find challenges -maxdepth 1 -mindepth 1 -type d -printf "  %f\n" | sort
  exit 1
fi

CHALLENGE="$1"
DIR="challenges/${CHALLENGE}"

if [ ! -d "$DIR" ]; then
  echo "Challenge not found: $DIR"
  exit 1
fi

echo "Applying: $CHALLENGE"
kubectl apply -f "$DIR"

echo
echo "Task:"
echo "cat ${DIR}/TASK.md"
