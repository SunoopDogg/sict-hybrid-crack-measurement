FROM python:3.13.5-slim-bookworm

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y \
        git \
        libgtk2.0-dev \
        libgl1-mesa-glx \
        tk \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root