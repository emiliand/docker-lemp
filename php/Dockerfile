FROM php:fpm-alpine
MAINTAINER Tim Birkett <tim.birkett@devopsmakers.com>

# Install extra modules here
RUN /usr/local/bin/docker-php-ext-install pdo pdo_mysql

# Install Drupal requirements
RUN apk add --update libpng-dev libjpeg-turbo-dev && \
    /usr/local/bin/docker-php-ext-install opcache gd
