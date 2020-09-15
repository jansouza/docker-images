FROM quay.io/prometheus/busybox-linux-amd64:latest
MAINTAINER Jan Souza <me@jansouza.com>

COPY ./bin/blackbox_exporter  /bin/blackbox_exporter
COPY ./config/blackbox.yml    /etc/blackbox_exporter/config.yml

EXPOSE      9115
ENTRYPOINT  [ "/bin/blackbox_exporter" ]
CMD         [ "--config.file=/etc/blackbox_exporter/config.yml" ]
