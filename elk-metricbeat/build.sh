#!/bin/bash
set -e

#docker build -t elk-metricbeat .
#docker run -dit --name metricbeat -p 8888:8080 elk-metricbeat

docker run \
docker.elastic.co/beats/metricbeat:7.6.2 \
setup -E setup.kibana.host=localhost:5601 \
-E output.elasticsearch.hosts=["localhost:9200"]

docker ps
