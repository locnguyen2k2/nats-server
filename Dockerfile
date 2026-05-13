FROM nats:latest

COPY nats-server.conf.template /etc/nats/nats-server.conf.template
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

EXPOSE 4222
EXPOSE 10000

ENTRYPOINT ["/docker-entrypoint.sh"]