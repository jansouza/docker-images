#!/bin/bash
set -e

docker build -t memcached .
docker run -dit --name my-memcached-app -p 11211:11211 memcached

docker ps
docker logs my-memcached-app
