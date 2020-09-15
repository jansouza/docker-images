#!/bin/bash
set -e

docker build -t jenkins-img .
docker run -dit --name jenkins -p 32777:8080 -p 32776:50000 -v jenkins_home:/var/jenkins_home jenkins-img

docker ps
