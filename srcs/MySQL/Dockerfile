FROM alpine:3.12

RUN apk update && apk upgrade && apk add vim openrc mariadb mariadb-client

COPY my.cnf /etc/
COPY createdb .
COPY b.sql .

VOLUME ["/sys/fs/cgroup"]
EXPOSE 3306

COPY init.sh .
CMD sh init.sh
