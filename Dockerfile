FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    apache2 \
    mysql-server \
    php \
    libapache2-mod-php \
    php-mysql \
    git
RUN rm -rf /var/www/html/ 
RUN git clone https://github.com/atinymochi-uwu/atinymochi-uwu.github.io /tmp/html
EXPOSE 80
CMD service mysql start && apache2ctl -D FOREGROUND