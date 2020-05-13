#!/bin/bash
set -e

docker stop my-wildfly-app
docker rm my-wildfly-app
docker rmi jboss-wildfly
