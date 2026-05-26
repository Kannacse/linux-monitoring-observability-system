#!/bin/bash

echo "Checking containers..."

docker ps | grep linux-monitor >/dev/null || exit 1
docker ps | grep prometheus >/dev/null || exit 1
docker ps | grep grafana >/dev/null || exit 1
docker ps | grep node-exporter >/dev/null || exit 1

echo "Health check passed"
