
Blackbox exporter
=============================================

The blackbox exporter allows blackbox probing of endpoints over HTTP, HTTPS, DNS, TCP and ICMP.

Documentation
-------------

Build
-------------
$ docker build -t blackbox_exporter .
$ docker run -dit --name blackbox_exporter -p 9115:9115 blackbox_exporter

Re-Build
-------------
$ docker stop blackbox_exporter
$ docker rm blackbox_exporter
$ docker rmi blackbox_exporter

$ docker build -t blackbox_exporter .
$ docker run -dit --name blackbox_exporter -p 9115:9115 blackbox_exporter
