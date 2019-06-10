FROM debian:latest
MAINTAINER Vladimir Pereskokov <markule@mail.ru>
RUN apt-get update && apt-get install -y mysql-server
EXPOSE 3306
VOLUME /var/lib/mysql
COPY files/my.cnf /etc/my.cnf
COPY files/mysql-setup.sh /
ENTRYPOINT ["./mysql-setup.sh","start"]
