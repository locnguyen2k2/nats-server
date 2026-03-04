FROM nats:latest

EXPOSE 4222
CMD ["--jetstream=true", "--port=4222"]