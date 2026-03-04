# Use a minimal base image
FROM scratch

# Copy the pre-compiled NATS server binary into the container
# This binary must be downloaded and compiled in a previous build stage (not shown here)
COPY nats-server /usr/local/bin/nats-server

# Expose default ports
EXPOSE 4222
EXPOSE 6222
EXPOSE 8222

# Set the entrypoint to run the NATS server
ENTRYPOINT ["/usr/local/bin/nats-server"]

# Default command to start the server (e.g., without any specific config)
CMD ["-a", "0.0.0.0"] 
