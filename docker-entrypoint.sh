#!/bin/sh

envsubst < /etc/nats/nats-server.conf.template > /etc/nats/nats-server.conf

exec nats-server -c /etc/nats/nats-server.conf