FROM debian:buster

RUN	apt-get update && apt-get -y install nginx && mkdir -p /run/nginx && apt-get install openssl

COPY tools/nginx.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/site/
COPY tools/index.html /var/www/site/
RUN chmod 777 /var/www/site/index.html

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj "/C=RU/ST=/L=Moscow/O=/OU=/CN=cyuuki" \
	-keyout /etc/ssl/nginx-mykey.key \
	-out /etc/ssl/nginx-mykey.crt

CMD ["nginx","-g","daemon off;"]