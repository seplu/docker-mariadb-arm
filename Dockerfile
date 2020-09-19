FROM arm32v7/alpine:latest

LABEL maintainer="Sebastian Pludowski <sepludowski@gmail.com>"

COPY qemu-arm-static /usr/bin/

RUN apk add --update mariadb mariadb-client mariadb-server-utils pwgen && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

VOLUME ["/var/lib/mysql"]
EXPOSE 3306

CMD ["/opt/mariadb/run.sh"]

ADD ./files /opt/mariadb
RUN chmod a+x /opt/mariadb/*
