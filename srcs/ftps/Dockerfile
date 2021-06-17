FROM alpine:3.12

RUN apk update && apk upgrade && apk add vsftpd openrc openssl

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russian/L=Kazan/O=CDanette/OU=21school/CN=localhost" \
-newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt

RUN addgroup -S ftps && adduser -S admin -G ftps -h /var/www
RUN echo "admin:admin" | chpasswd
RUN chown admin:ftps /var/www

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

EXPOSE 21 21000

CMD ["vsftpd", "/etc/vsftpd/vsftpd.conf"]
