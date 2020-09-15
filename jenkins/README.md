
Jenkins - Basic Security Configuration
============================================

Documentation
-------------

Build
-------------
$ docker build -t jenkins-img .
$ docker run -dit --name jenkins -p 32777:8080 -p 32776:50000 -v jenkins_home:/var/jenkins_home jenkins-img


Re-Build
-------------
$ docker stop jenkins
$ docker rm jenkins
$ docker rmi jenkins-img

$ docker build -t jenkins-img .
$ docker run -dit --name jenkins -p 32777:8080 -p 32776:50000 -v jenkins_home:/var/jenkins_home jenkins-img
