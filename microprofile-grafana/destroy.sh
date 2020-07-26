#!/bin/bash
set -e

docker stop gen-grafana
docker rm gen-grafana
docker rmi microprofile-grafana
