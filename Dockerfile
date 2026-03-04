FROM nats:2.10-alpine

EXPOSE 4222
EXPOSE ${PORT:-8222}

CMD ["--jetstream", "--store_dir", "/data", "--host", "0.0.0.0", "--port", "4222", "--http_port", "${PORT:-8222}", "--monitor", "${PORT:-8222}"]