#!/bin/bash
set -e

docker stop my-tomcat-app
docker rm my-tomcat-app
docker rmi apache-tomcat
