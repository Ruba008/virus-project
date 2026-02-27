FROM debian:bookworm-slim

WORKDIR /script

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /target && bash -c 'for i in {1..10}; do touch "/target/program_$i.sh"; done'

EXPOSE 8081

ENTRYPOINT ["bash"]