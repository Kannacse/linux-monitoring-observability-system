#!/bin/bash

set -e

cd /app

mkdir -p logs

chmod +x \
controller/main-monitor \
monitor/* \
analyzer/* \
healer/*

./controller/main-monitor

tail -f /dev/null
