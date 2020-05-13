#!/bin/bash
set -e

docker build -t apache-tomcat .
docker run -dit --name my-tomcat-app -p 8888:8080 apache-tomcat

docker ps
