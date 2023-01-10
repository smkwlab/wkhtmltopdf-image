FROM ubuntu:latest

ENV TZ=Asia/Tokyo

ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NOWARNINGS=yes

RUN apt-get update -q && \
    apt-get install -y --no-install-recommends \
        wkhtmltopdf \
        fonts-noto-cjk \
        && \
    fc-cache -fv && \
    apt-get clean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*
