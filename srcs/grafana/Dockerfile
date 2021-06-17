FROM alpine:3.12

RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk update && apk add grafana openrc telegraf libc6-compat

COPY grafana.sh /

COPY grafana.db /usr/share/grafana/data/grafana.db

EXPOSE 3000

ENTRYPOINT ["sh", "grafana.sh"]