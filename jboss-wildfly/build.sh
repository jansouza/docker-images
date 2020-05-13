#!/bin/bash
set -e

docker build -t jboss-wildfly .
docker run -dit --name my-wildfly-app -p 8080:8080 -p 9990:9990 jboss-wildfly

docker ps
docker logs my-wildfly-app
