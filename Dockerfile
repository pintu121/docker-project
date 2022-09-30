FROM centos:8
LABEL maintainer="pintuwap@outlook.com"
RUN dnf update -y
RUN dnf upgrade -y
RUN dnf install epel-release -y
RUN dnf install httpd -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page2/ost-magazine.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip ost-magazine.zip
RUN copy -rvf ost-magazine/* .
RUN rm -rf ost-magazine.zip
CMD ["/usr/sbin/httpd", "-d", "FOREGROUND"]
