FROM alpine:3.12

RUN apk update && apk upgrade && apk add nginx vim supervisor wget php7 php7-fpm php7-gd php7-iconv php7-mysqli php7-mbstring php7-json php7-session php7-xml

RUN mkdir -p /run/nginx;
RUN mkdir -p var/www/

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz
RUN tar -xvf phpMyAdmin-5.0.2-english.tar.gz && mv phpMyAdmin-5.0.2-english /var/www/phpmyadmin
RUN rm -rf phpMyAdmin-5.0.2-english.tar.gz

COPY config.inc.php /var/www/phpmyadmin
COPY supervisord.conf /etc/supervisord.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 5000

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
