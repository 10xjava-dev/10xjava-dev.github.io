
# Use a lightweight base image
FROM ubuntu:20.04

# Install dependencies (if any)
RUN apt-get update && apt-get install -y \
    curl \
    jq \
    git \
    ruby-full \
     build-essential \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN gem update --system
RUN gem install bundler -v 2.4.22
RUN gem install ffi -v 1.17.0
RUN gem install jekyll bundler
# Make the script executable
COPY ci.sh .
RUN chmod +x /ci.sh

RUN mkdir -p /github/workspace
RUN mkdir /site
WORKDIR /site

# Define the entry point for the container
ENTRYPOINT ["/ci.sh"]
