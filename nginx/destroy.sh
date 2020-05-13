#!/bin/bash
set -e

docker stop my-nginx-app
docker rm my-nginx-app
docker rmi nginx
