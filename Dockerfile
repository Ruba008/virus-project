FROM debian:bookworm-slim

WORKDIR /script

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    vim \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8081

ENTRYPOINT ["bash"]