#!/bin/bash
cd observability || exit
docker compose up -d
cd ../main-controller || exit
./main-monitor
