FROM php:5.6-apache

MAINTAINER Toru TAMURA <torut@ttsoft.jp>

RUN { \
    echo '[PHP]'; \
    echo 'post_max_size = 24M'; \
    echo 'upload_max_filesize = 24M'; \
    echo 'memory_limit = 1024M'; \
    echo 'date.timezone = Asia/Tokyo'; \
} > /usr/local/etc/php/php.ini

RUN apt-get update --fix-missing \
  && apt-get install -y --fix-missing libjpeg62-turbo-dev libpng12-dev libfreetype6-dev libmcrypt-dev libicu-dev git zip \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/lib/x86_64-linux-gnu/ --with-jpeg-dir=/usr/lib/x86_64-linux-gnu/ \
  && docker-php-ext-install pdo_mysql mbstring gd mcrypt intl opcache zip

RUN a2enmod rewrite

WORKDIR /var/www
RUN rm -rf html && ln -s /var/www/app/public html

COPY init.sh /entrypoint.sh

EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
