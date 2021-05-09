FROM php:8.0-fpm
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
