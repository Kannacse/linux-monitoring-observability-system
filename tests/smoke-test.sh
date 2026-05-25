#!/bin/bash

set -e

echo "Starting smoke tests..."

echo "[1] Checking directories"

for dir in \
monitor \
analyzer \
healer \
observability \
docker \
deploy
do
 test -d "$dir"
done

echo "[2] Checking configs"

test -f config/services.conf
test -f config/thresholds.conf

echo "[3] Checking scripts"

test -f controller/main-monitor
test -f start-project.sh

echo "[4] Checking Docker"

test -f docker/Dockerfile

echo "[5] Checking deployment"

test -f deploy/docker-compose.yml

echo "Smoke tests passed"
