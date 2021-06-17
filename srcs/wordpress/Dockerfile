FROM alpine:3.12

RUN apk update && apk upgrade && apk add nginx supervisor wget php7 php7-fpm php7-gd php7-iconv php7-mysqli php7-mbstring php7-json php7-session php7-xml

RUN mkdir -p /run/nginx
RUN wget https://ru.wordpress.org/latest-ru_RU.tar.gz
RUN tar -xvf latest-ru_RU.tar.gz && mv wordpress /var/www/

COPY ./wp_config.php /var/www/wordpress/wp-config.php
COPY ./supervisord.conf /etc/supervisord.conf
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 5050

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
