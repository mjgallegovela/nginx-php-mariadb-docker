FROM php:7.1-fpm-alpine

#xdebug v2.6.1
RUN apk upgrade --update
RUN apk add --update --no-cache autoconf \
								g++ \
								make \
								libc-dev \
								libmemcached-dev \
								libmcrypt-dev \
								libintl \
								cyrus-sasl-dev \
								zlib-dev \
								libxml2-dev \
								imap-dev \
								openssl-dev \
								libpng-dev \
								mariadb-client \
								icu icu-dev \
    && apk add --no-cache gettext-dev \
    #xdebug v2.6.1
    && pecl install redis memcached igbinary msgpack xdebug-2.6.1\
	&& pecl clear-cache \
	&& docker-php-ext-enable redis memcached.so msgpack.so igbinary.so xdebug.so \
	&& docker-php-ext-configure imap --with-imap --with-imap-ssl \
	&& docker-php-ext-install mcrypt pdo_mysql soap imap mbstring gd zip intl gettext mysqli


COPY ./docker/php/www.conf /usr/local/etc/php-fpm.d/www.conf
COPY ./docker/php/php-session.ini /usr/local/etc/php/conf.d/session.ini
COPY ./docker/php/xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

COPY ./code /code
RUN chown :www-data -R /code/content

# Backwards compatible defaults
ENV PHP_SESSION_SAVE_HANDLER=files PHP_SESSION_SAVE_PATH=/tmp

