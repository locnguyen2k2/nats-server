FROM nats:latest

EXPOSE 4222
EXPOSE 8222

CMD ["-js", "-a", "0.0.0.0", "-p", "4222", "-m", "8222"]