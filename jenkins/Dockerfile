FROM jenkins/jenkins

ENV JENKINS_USER admin
ENV JENKINS_PASS admin

# Skip initial setup
#ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=true

#COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
#RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
