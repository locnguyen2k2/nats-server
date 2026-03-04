FROM nats:latest

EXPOSE 4222

CMD ["--jetstream", "--host", "0.0.0.0", "--port", "4222", "--http_port", "8222"]