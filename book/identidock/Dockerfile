FROM python:latest

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi \
    && pip install Flask uWSGI  requests redis

WORKDIR /app

COPY app /app
COPY cmd.sh /

EXPOSE 9090 9191
USER uwsgi
cmd ["/cmd.sh"]
