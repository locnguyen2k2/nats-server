FROM nats:latest

EXPOSE 4222

CMD ["--jetstream=true","--host=0.0.0.0","--http_port=0.0.0.0:${PORT}","--port=4222"]