FROM nginx:stable
MAINTAINER Jan Souza <me@jansouza.com>

ENV NGINX_RUN_USER www-data
ENV NGINX_RUN_GROUP www-data
ENV NGINX_ROOT_DIR /etc/nginx
ENV DOCKER_NETWORK 172.17.0.0/16

RUN rm ${NGINX_ROOT_DIR}/conf.d/default.conf

COPY ./conf/nginx.conf ${NGINX_ROOT_DIR}/nginx.conf
RUN sed -i 's:DOCKER_NETWORK:'${DOCKER_NETWORK}':g' ${NGINX_ROOT_DIR}/nginx.conf

COPY ./conf/nginx-compression.conf ${NGINX_ROOT_DIR}/nginx-compression.conf

#SSL
COPY ./ssl/server.crt ${NGINX_ROOT_DIR}/conf/server.crt
COPY ./ssl/server.key ${NGINX_ROOT_DIR}/conf/server.key
