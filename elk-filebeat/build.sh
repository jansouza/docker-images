#!/bin/bash
set -e

docker build -t elk-filebeat .
docker run -dit --name docker-filebeat elk-filebeat

docker ps
