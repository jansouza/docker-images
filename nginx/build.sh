#!/bin/bash
set -e

docker build -t nginx .
docker run -dit --name my-nginx-app -p 8080:80 -p 9443:443 nginx

docker ps
