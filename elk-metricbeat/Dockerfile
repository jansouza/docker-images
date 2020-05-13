FROM docker.elastic.co/beats/metricbeat:7.6.2
MAINTAINER Jan Souza <me@jansouza.com>

COPY .conf/metricbeat.yml /usr/share/metricbeat/metricbeat.yml
USER root
RUN chown root:metricbeat /usr/share/metricbeat/metricbeat.yml
USER metricbeat
