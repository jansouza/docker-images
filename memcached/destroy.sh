#!/bin/bash
set -e

docker stop my-memcached-app
docker rm my-memcached-app
docker rmi memcached
