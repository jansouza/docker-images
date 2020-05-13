FROM tomcat:9.0
MAINTAINER Jan Souza <me@jansouza.com>

ENV TOMCAT_RUN_USER tomcat
ENV TOMCAT_RUN_GROUP tomcat
ENV TOMCAT_ROOT_DIR /usr/local/tomcat
ENV TOMCAT_PASS tomcat

ENV DOCKER_NETWORK 172.17.*.*


#########
# Manager
#########
RUN mv ${TOMCAT_ROOT_DIR}/webapps.dist/manager ${TOMCAT_ROOT_DIR}/webapps/.
COPY ./config/tomcat-users.xml ${TOMCAT_ROOT_DIR}/conf/tomcat-users.xml
RUN sed -i 's:TOMCAT_PASS:'${TOMCAT_PASS}':g' ${TOMCAT_ROOT_DIR}/conf/tomcat-users.xml

RUN mkdir -p $TOMCAT_ROOT_DIR/conf/Catalina/localhost
COPY ./config/manager.xml $TOMCAT_ROOT_DIR/conf/Catalina/localhost/manager.xml
RUN sed -i 's:DOCKER_NETWORK:'${DOCKER_NETWORK}':g' $TOMCAT_ROOT_DIR/conf/Catalina/localhost/manager.xml

#########
# ENV
#########
COPY ./config/setenv.sh ${TOMCAT_ROOT_DIR}/bin/setenv.sh

#########
#SECURITY
#########
RUN groupadd -r ${TOMCAT_RUN_GROUP} && useradd -g ${TOMCAT_RUN_GROUP} -d ${TOMCAT_ROOT_DIR} ${TOMCAT_RUN_USER}

RUN chown -R root.${TOMCAT_RUN_GROUP} ${TOMCAT_ROOT_DIR}
RUN chmod -R 0750 ${TOMCAT_ROOT_DIR}/

RUN chown -R ${TOMCAT_RUN_USER}.${TOMCAT_RUN_GROUP} ${TOMCAT_ROOT_DIR}/temp
RUN chown -R ${TOMCAT_RUN_USER}.${TOMCAT_RUN_GROUP} ${TOMCAT_ROOT_DIR}/logs
RUN chown -R ${TOMCAT_RUN_USER}.${TOMCAT_RUN_GROUP} ${TOMCAT_ROOT_DIR}/work
RUN chown -R ${TOMCAT_RUN_USER}.${TOMCAT_RUN_GROUP} ${TOMCAT_ROOT_DIR}/conf/Catalina

#ServerInfo
RUN mkdir -p ${TOMCAT_ROOT_DIR}/lib/org/apache/catalina/util
RUN echo "server.info=Application Server" > ${TOMCAT_ROOT_DIR}/lib/org/apache/catalina/util/ServerInfo.properties

USER ${TOMCAT_RUN_USER}
