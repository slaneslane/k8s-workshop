#!/usr/bin/env bash
set +e

for ns in \
  qa-challenge-01 \
  qa-challenge-02 \
  qa-challenge-03 \
  qa-challenge-04 \
  qa-challenge-05 \
  qa-challenge-06 \
  qa-challenge-07 \
  qa-challenge-08-a \
  qa-challenge-08-b
do
  kubectl delete namespace "$ns" --ignore-not-found=true
done

echo "Done."
