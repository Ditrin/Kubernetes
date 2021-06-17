FROM alpine:3.12

RUN apk update && apk upgrade && apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/community --no-cache --allow-untrusted

COPY init.sh /tmp/init.sh
RUN chmod +x /tmp/init.sh
COPY telegraf.conf /etc/telegraf/

ENTRYPOINT ["/tmp/init.sh"]