FROM nats:latest

EXPOSE 4222
CMD ["nats-server", "--jetstream=true", "--port=4222"]