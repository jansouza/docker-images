
MEMCACHED - Basic Security Configuration
=============================================

Documentation
-------------

Build
-------------
$ docker build -t memcached .
$ docker run -dit --name my-memcached-app -p 8080:8080 -p 9990:9990 memcached

Re-Build
-------------
$ docker stop my-memcached-app
$ docker rm my-memcached-app
$ docker build -t memcached .
$ docker run -dit --name my-memcached-app -p 8080:8080 -p 9990:9990 memcached
