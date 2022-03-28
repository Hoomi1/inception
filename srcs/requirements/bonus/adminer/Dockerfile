FROM debian:buster

RUN apt-get -y update && apt-get -y install php-mysql php-fpm mariadb-client php7.3 php-mysqli php-curl wget

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php
RUN mkdir -p /var/www/ \
	&& mkdir -p /var/www/html/ \
	&& mkdir -p /var/www/html/adminer \
	&& mv adminer-4.8.1.php var/www/html/adminer/index.php \
	&& chmod +x /var/www/html/adminer/index.php \
	&& apt remove -y wget
# RUN chwon -R mysql:mysql /var/www/html/adminer/adminer.php 

CMD ["php-fpm8", "--nodaemonize"]