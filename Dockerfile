FROM nats:latest

EXPOSE 4222

ENTRYPOINT []

CMD sh -c "nats-server --jetstream=true --host=0.0.0.0 --port=4222 --http_port=${PORT}"