# Start from a very lightweight base image with GCC
FROM debian:bookworm-slim

# Install only the essentials (gcc, make, and optional gdb)
RUN apt-get update && apt-get install -y \
  gcc make gdb \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Default command: start a shell
CMD ["/bin/bash"]
