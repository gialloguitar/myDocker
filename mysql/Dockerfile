FROM debian:latest
MAINTAINER Vladimir Pereskokov <markule@mail.ru>
RUN apt-get update && apt-get install -y mysql-server
EXPOSE 3306
COPY files/my.cnf /etc/mysql/mariadb.conf.d/60-custom.cnf
COPY files/mysql-setup.sh /
ENTRYPOINT ["./mysql-setup.sh","start"]
