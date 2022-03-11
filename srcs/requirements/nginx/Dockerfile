FROM debian:buster

RUN apt-get -y update \
	&& apt-get -y install nginx && apt-get install openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj "/C=RU/ST=/L=Moscow/O=/OU=/CN=cyuuki" \
	-keyout /etc/ssl/nginx-mykey.key \
	-out /etc/ssl/nginx-mykey.crt

COPY /tools/default /etc/nginx/sites-available

EXPOSE 443

CMD ["nginx","-g","daemon off;"]