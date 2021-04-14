FROM python:3.8.0a3-alpine3.9

# Versions: https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.19.10

RUN apk --no-cache update && \
    apk --no-cache add ca-certificates groff less jq && \
    pip3 --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    rm -rf /var/cache/apk/*

WORKDIR /data