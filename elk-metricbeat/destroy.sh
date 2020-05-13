#!/bin/bash
set -e

docker stop metricbeat
docker rm metricbeat
docker rmi elk-metricbeat
