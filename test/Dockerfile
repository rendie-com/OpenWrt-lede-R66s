FROM ubuntu:22.04
RUN apt update -y \
    && apt -y install wget \
    && wget -O redis.tar.gz "http://download.redis.io/releases/redis-7.2.4.tar.gz" \
    && tar -xvf redis.tar.gz