#!/bin/bash
set -e

docker-compose stop
docker-compose rm -f fluentd
docker-compose rm -f kibana
docker-compose rm -f elasticsearch
