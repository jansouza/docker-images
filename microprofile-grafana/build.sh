#!/bin/bash
set -e

docker build -t microprofile-grafana .
docker run -dit --name gen-grafana -p 8081:8080 microprofile-grafana

docker ps
