#!/bin/sh

cd /var/www/app
php composer.phar self-update
php composer.phar install --prefer-dist --no-dev

# DBの接続設定を変更する
sed -i -e "s/mysql:host=.*;/mysql:host=$MYSQL_HOSTNAME;/g" /var/www/app/fuel/app/config/development/db.php
sed -i -e "s/'password'.*$/'password' => '$MYSQL_ROOT_PASSWORD',/g" /var/www/app/fuel/app/config/development/db.php

exec "$@"
