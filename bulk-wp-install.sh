#!/bin/bash

MYSQL_USER="user"
MYSQL_PASSWORD="pass"

for i in {00..30}; do
    # Másolás a megfelelő helyre
    cp -r wp /var/www/wp/$i

    # wp-config.php fájlban a DB_NAME cseréje
    sed -i "s/define( 'DB_NAME', 'wpalap' );/define( 'DB_NAME', 'orawp$i' );/" /var/www/wp/$i/wp-config.php

    # alap.sql fájlban az URL-ek cseréje
    sed -i "s|'http://domain.tld/base'|'http://domain.tld/$i'|; s|'http://domain.tld/base'|'http://domain.tld/$i'|" /var/www/wp/$i/alap.sql

    # MySQL adatbázis létrehozása
    mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS orawp$i;"

    # MySQL adatbázisba importálás
    mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" orawp$i < /var/www/wp/$i/alap.sql
done

chown -R apache:apache /var/www/
