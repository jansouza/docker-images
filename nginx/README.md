
NGINX - Basic Security Configuration
============================================

Documentation
-------------

Build
-------------
$ docker build -t nginx .
$ docker run -dit --name my-nginx-app -p 8080:80 -p 9443:443 nginx

Re-Build
-------------
$ docker stop my-nginx-app
$ docker rm my-nginx-app
$ docker build -t nginx .
$ docker run -dit --name my-nginx-app -p 8080:80 -p 9443:443 nginx

SSL
--------------
Create Self Certificate
openssl req \
    -x509 \
    -sha256 \
    -newkey rsa:2048 \
    -keyout server.key \
    -out server.crt \
    -days 7300 \
    -subj "/C=CountryName/ST=StateOrProvinceName/L=Locality/O=Organization/OU=OrganizationalUnit/CN=CommonName" \
    -nodes
