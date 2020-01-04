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
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
docker-php-ext-install \
gd \
mysqli \
pdo \
pdo_mysql \
zip 
