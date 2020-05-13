FROM httpd:2.4
MAINTAINER Jan Souza <me@jansouza.com>

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_ROOT_DIR /usr/local/apache2
ENV DOCKER_NETWORK 172.17

COPY ./config/httpd.conf ${APACHE_ROOT_DIR}/conf/httpd.conf
COPY ./config/httpd-default.conf ${APACHE_ROOT_DIR}/conf/httpd-default.conf

COPY ./config/httpd-info.conf ${APACHE_ROOT_DIR}/conf/httpd-info.conf
RUN sed -i 's:DOCKER_NETWORK:'${DOCKER_NETWORK}':g' ${APACHE_ROOT_DIR}/conf/httpd-info.conf

COPY ./config/httpd-mpm.conf ${APACHE_ROOT_DIR}/conf/httpd-mpm.conf
COPY ./config/httpd-ssl.conf ${APACHE_ROOT_DIR}/conf/httpd-ssl.conf
COPY ./config/httpd-vhosts.conf ${APACHE_ROOT_DIR}/conf/httpd-vhosts.conf

#SSL
COPY ./ssl/server.crt ${APACHE_ROOT_DIR}/conf/server.crt
COPY ./ssl/server.key ${APACHE_ROOT_DIR}/conf/server.key

#SECURITY
RUN chown -R root.${APACHE_RUN_GROUP} ${APACHE_ROOT_DIR}/
RUN chmod -R 0750 ${APACHE_ROOT_DIR}/
