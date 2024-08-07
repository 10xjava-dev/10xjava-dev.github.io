
# Use a lightweight base image
FROM ruby:3.1-slim-bullseye as jekyll

RUN mkdir -p /github/workspace

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN gem update --system && gem install jekyll && gem cleanup


# Copy your action code to the container
COPY entrypoint.sh /entrypoint.sh

# Make the script executable
RUN chmod +x /entrypoint.sh

# Define the entry point for the container
ENTRYPOINT ["/entrypoint.sh"]
