FROM nats:latest

EXPOSE 4222
EXPOSE 10000

CMD ["-js", "-a", "0.0.0.0", "-p", "4222", "-m", "10000"]