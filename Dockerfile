FROM alpine:3.7

RUN apk add --no-cache mariadb mariadb-client
COPY src /
RUN mysql-setup

ENTRYPOINT ["mysql-entrypoint"]

USER mysql
CMD ["mysqld", "--skip-name-resolve"]
