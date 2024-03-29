FROM centos:latest

MAINTAINER NewstarCorporation2

RUN yum install -y httpd

COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
