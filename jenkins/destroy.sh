#!/bin/bash
set -e

docker stop jenkins
docker rm jenkins
docker rmi jenkins-img
