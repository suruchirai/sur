FROM centos-latest
MAINTAINER suruchi.rai@gmail.com
RUN yum install httpd -y \
   zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/mediumish.zip /var/www/html
WORKDIR /var/www/html
RUN unzip mediumish.zip
RUN cp -rvf mediumish-html/* .
RUN rm -rf mediumish-html mediumish.zip
CMD [*//usr/sbin/httpd*, "-O","FOREGROUND"]
EXPOSE 80
