<p align = "center">
Docker-hub-image-php
<br><br>
<img src="https://img.shields.io/docker/cloud/automated/tangcuyu/php?style=flat-square">
<img src="https://img.shields.io/docker/cloud/build/tangcuyu/php?style=flat-square">
<img src="https://img.shields.io/docker/pulls/tangcuyu/php.svg?style=flat-square">
<img src="https://img.shields.io/docker/v/tangcuyu/php?sort=date&style=flat-square">
<img alt="Docker Image Version (latest semver)" src="https://img.shields.io/docker/v/tangcuyu/php?sort=semver&style=flat-square">
</p>

# docker-hub-image-php

## Dockerfile

```Dockerfile
FROM php:7.4-fpm
RUN apt-get update \
    && apt-get install -y \
        apt-utils \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libgd-dev \
        libzip-dev
RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ && \
docker-php-ext-install \
gd \
mysqli \
pdo \
pdo_mysql \
zip 

# Clear package lists
RUN apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
```
