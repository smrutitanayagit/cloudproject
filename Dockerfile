FROM centos:latest
MAINTAINER smruti@gmail.com
RUN yum install -y httpd \
  zip \
  unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/mediplus-lite.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip mediplus-lite.zip
RUN cp -rvf mediplus-lite/* .
RUN rm -rf mediplus-lit mediplus-lite.zip
CMD ["/usr/sbin/httpd", "-D", "FROEGROUND"]
EXPOSE 80
