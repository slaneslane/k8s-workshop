#!/usr/bin/env bash
set +e

echo "Cleaning Day 1 labs..."

kubectl delete namespace qa-demo --ignore-not-found=true
kubectl delete deployment qa-web --ignore-not-found=true
kubectl delete service qa-web --ignore-not-found=true
kubectl delete pod qa-web --ignore-not-found=true
kubectl delete deployment qa-logger --ignore-not-found=true
kubectl delete deployment qa-nginx --ignore-not-found=true
kubectl delete service qa-nginx --ignore-not-found=true
kubectl delete service qa-web --ignore-not-found=true

echo "Done."
