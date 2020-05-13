
Apache Tomcat - Basic Security Configuration
=============================================

Documentation
-------------

Build
-------------
$ docker build -t apache-tomcat .
$ docker run -dit --name my-tomcat-app -p 8888:8080 apache-tomcat

Re-Build
-------------
$ docker stop my-tomcat-app
$ docker rm my-tomcat-app
$ docker build -t apache-tomcat .
$ docker run -dit --name my-tomcat-app -p 8888:8080 apache-tomcat
