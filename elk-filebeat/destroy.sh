#!/bin/bash
set -e

docker stop docker-filebeat
docker rm docker-filebeat
docker rmi elk-filebeat
