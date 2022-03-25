#!bin/sh

# sed -i "s/# maxmemory <bytes>/maxmemory 256mb/" etc/redis/redis.conf
# sed -i "s/bind 127.0.0.1/#bind 127.0.0.1/" etc/redis/redis.conf
# sed -i "s/# maxmemory-policy noeviction/maxmemory-policy allkeys-lru/" etc/redis/redis.conf
# sed -i "s/protected-mode yes/protected-mode no/" /etc/redis/redis.conf

redis-server --protected-mode no