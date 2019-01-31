FROM alpine:latest
LABEL Name=docker-socat Version=0.0.1

RUN set -x && apk update && apk add \
    socat \
    && rm -rf /var/cache/apk/*

ENTRYPOINT [ "socat" ]
CMD [ "tcp-listen:2375,fork,reuseaddr", "unix-connect:/var/run/docker.sock" ]
