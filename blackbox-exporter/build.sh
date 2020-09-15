#!/bin/bash
set -e

docker build -t blackbox_exporter .
docker run -dit --name blackbox_exporter -p 9115:9115 blackbox_exporter

docker ps
