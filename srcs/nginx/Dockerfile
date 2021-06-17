FROM alpine:3.12

RUN apk update && apk upgrade && apk add nginx openssl 

COPY ./default.conf /etc/nginx/conf.d/default.conf

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russian/L=Kazan/O=CDanette/OU=21school/CN=localhost" \
-newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt

COPY ./init.sh /tmp/
RUN chmod +x /tmp/init.sh && mkdir /var/www/html
RUN mkdir -p /run/nginx
RUN touch /var/www/html/index.html
EXPOSE 80 443

CMD ["/tmp/init.sh"]
