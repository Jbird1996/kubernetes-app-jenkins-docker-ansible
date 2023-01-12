FROM centos:latest

RUN yum install -y httpd \
  zip\
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/cycle.zip /var/www/html/

WORKDIR /var/www/html/

RUN unzip cycle.zip

RUN cp -rvf cycle/* .

RUN rm -rf cycle cycle.zip

CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]

EXPOSE 80 22