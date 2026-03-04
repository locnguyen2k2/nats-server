FROM nats:latest

EXPOSE 4222
CMD ["--jetstream=true", "--port", "4222", "--http_port", "${PORT:-8222}", "--monitor", "${PORT:-8222}"]