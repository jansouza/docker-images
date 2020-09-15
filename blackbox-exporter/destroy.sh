#!/bin/bash
set -e

docker stop blackbox_exporter
docker rm blackbox_exporter
docker rmi blackbox_exporter
