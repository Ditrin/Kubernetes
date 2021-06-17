#!/bin/sh

openrc default
/etc/init.d/mariadb setup
rc-service mariadb start
mysql -u root mysql < createdb
mysql -u root wordpress < b.sql

rc-service mariadb stop

/usr/bin/mysqld_safe