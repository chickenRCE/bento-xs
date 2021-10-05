FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    cowsay \
    openssh-client \
    netcat \
    rlwrap \
    python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --no-cache-dir --upgrade \
    pip \
    pwntools

CMD ["/usr/bin/sleep", "infinity"]
