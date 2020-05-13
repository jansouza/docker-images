FROM jboss/wildfly
MAINTAINER Jan Souza <me@jansouza.com>

ENV JBOSS_RUN_USER jboss
ENV JBOSS_RUN_GROUP jboss
ENV JBOSS_ROOT_DIR /opt/jboss/wildfly

ENV JBOSS_MANAGEMENT_USER admin
ENV JBOSS_MANAGEMENT_PASS jboss

ENV DOCKER_NETWORK 172.17.*.*

#Configuration
COPY ./conf/standalone.conf ${JBOSS_ROOT_DIR}/bin/standalone.conf

#User Management
RUN ${JBOSS_ROOT_DIR}/bin/add-user.sh ${JBOSS_MANAGEMENT_USER} ${JBOSS_MANAGEMENT_PASS} --silent

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]


#########
#SECURITY
#########
#USER root
#RUN mkdir ${JBOSS_ROOT_DIR}/standalone/log

#RUN chown -R root.${JBOSS_RUN_GROUP} ${JBOSS_ROOT_DIR}
#RUN chmod -R 0750 ${JBOSS_ROOT_DIR}/

#USER ${JBOSS_RUN_USER}
