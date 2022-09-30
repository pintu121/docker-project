FROM httpd
RUN yum install httpd -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page2/ost-magazine.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip ost-magazine.zip
RUN copy -rvf ost-magazine/* .
RUN rm -rf ost-magazine.zip
