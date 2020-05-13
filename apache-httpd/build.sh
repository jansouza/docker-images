#!/bin/bash
set -e

docker build -t apache-httpd .
docker run -dit --name my-apache-app -p 8080:80 -p 9443:443 apache-httpd

docker ps
