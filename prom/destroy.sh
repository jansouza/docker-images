#!/bin/bash
set -e

docker-compose stop
docker-compose rm -f prometheus
docker-compose rm -f grafana
docker-compose rm -f alertmanager
