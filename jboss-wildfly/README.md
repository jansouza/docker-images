
Jboss WildFly - Basic Security Configuration
=============================================

Documentation
-------------

Build
-------------
$ docker build -t jboss-wildfly .
$ docker run -dit --name my-wildfly-app -p 8080:8080 -p 9990:9990 jboss-wildfly

Re-Build
-------------
$ docker stop my-wildfly-app
$ docker rm my-wildfly-app
$ docker build -t jboss-wildfly .
$ docker run -dit --name my-wildfly-app -p 8080:8080 -p 9990:9990 jboss-wildfly
