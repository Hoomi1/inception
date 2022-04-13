FROM debian:buster

RUN	apt-get -y update && apt-get -y install mariadb-server
RUN sed -i 's/127.0.0.1/0.0.0.0/' etc/mysql/mariadb.conf.d/50-server.cnf

COPY /tools/db.sh ./
RUN chmod 755 db.sh

ENTRYPOINT ["bash", "db.sh"]