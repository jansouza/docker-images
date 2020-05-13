#!/bin/bash
set -e

#sysctl -w vm.max_map_count=262144

docker-compose build --no-cache
docker-compose up -d --force-recreate
docker-compose ps
