FROM nats:alpine

RUN apk add --no-cache gettext

COPY --chmod=755 nats-server.conf.template /etc/nats/nats-server.conf.template
COPY --chmod=755 docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

EXPOSE 4222
EXPOSE 10000

ENTRYPOINT ["/docker-entrypoint.sh"]