
# Use a lightweight base image
FROM ubuntu:20.04

# Install dependencies (if any)
RUN apt-get update && apt-get install -y \
    curl \
    jq \
    && rm -rf /var/lib/apt/lists/*

# Make the script executable
COPY ci.sh .
RUN chmod +x /ci.sh


RUN mkdir /site
WORKDIR /site

# Define the entry point for the container
ENTRYPOINT ["/ci.sh"]
