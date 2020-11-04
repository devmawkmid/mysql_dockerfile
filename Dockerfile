# base image alpine:latest
FROM alpine

COPY setup.sh .
COPY setup.sh .
COPY req.sql .
COPY wordpress.sql .

RUN ["/bin/sh", "setup.sh"]
COPY supervisord.conf /etc/supervisord.conf
COPY telegraf.conf /etc/telegraf.conf
COPY start.sh .

CMD sh start.sh