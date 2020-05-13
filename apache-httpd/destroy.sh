#!/bin/bash
set -e

docker stop my-apache-app
docker rm my-apache-app
docker rmi apache-httpd
