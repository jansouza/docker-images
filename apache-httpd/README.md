
Apache HTTPD - Basic Security Configuration
============================================

Documentation
-------------

Build
-------------
$ docker build -t apache-httpd .
$ docker run -dit --name my-apache-app -p 8080:80 -p 9443:443 apache-httpd

Re-Build
-------------
$ docker stop my-apache-app
$ docker rm my-apache-app
$ docker build -t apache-httpd .
$ docker run -dit --name my-apache-app -p 8080:80 -p 9443:443 apache-httpd

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
