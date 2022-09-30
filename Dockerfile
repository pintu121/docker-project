FROM centos:latest
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page2/ost-magazine.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip ost-magazine.zip
RUN copy -rvf ost-magazine/* .
CMD ["/usr/sbin/httpd", "-d", "FOREGROUND"]
