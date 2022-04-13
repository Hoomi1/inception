FROM debian:buster

RUN apt-get -y update && apt-get -y install php7.3 php-mysql php-fpm mariadb-client
RUN apt-get -y install wget

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod 777 wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp \
	&& apt remove -y wget
#?
RUN wp core download --path=usr/src/wordpress --allow-root 

# RUN sed -i 's/\/run\/php\/php7.3-fpm.sock/wordpress:9000/' etc/php/7.3/fpm/pool.d/www.conf
COPY tools/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY tools/start_wordpress.sh ./
# COPY tools/php-fpm.conf etc/php/7.3/fpm/

COPY tools/wp-config.php ./
RUN chmod 755 start_wordpress.sh /etc/php/7.3/fpm/pool.d/www.conf ./wp-config.php

EXPOSE 9000

ENTRYPOINT ["bash", "start_wordpress.sh"]