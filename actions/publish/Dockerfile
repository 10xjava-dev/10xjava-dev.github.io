
# Use a lightweight base image
FROM ubuntu:20.04

RUN mkdir -p /github/workspace

# Install dependencies (if any)
RUN apt-get update && apt-get install -y \
    curl \
    jq \
    && rm -rf /var/lib/apt/lists/*

# Copy your action code to the container
COPY entrypoint.sh /entrypoint.sh

# Make the script executable
RUN chmod +x /entrypoint.sh

# Define the entry point for the container
ENTRYPOINT ["/entrypoint.sh"]
