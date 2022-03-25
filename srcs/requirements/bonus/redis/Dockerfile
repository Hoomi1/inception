FROM debian:buster

RUN	apt-get update && apt-get install redis -y redis && \
	apt-get install -y procps && rm -rf /var/lib/apt/lists/*

COPY tools/serv-redis.sh ./
COPY tools/redis.conf /etc/redis/redis.conf
RUN chmod 777 serv-redis.sh /etc/redis/redis.conf


EXPOSE 6379

CMD ["redis-server", "./", "--protected-mode", "no"]