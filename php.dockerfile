FROM php:7-fpm
RUN mkdir /public
COPY ./public /public
RUN pecl install redis && docker-php-ext-enable redis
