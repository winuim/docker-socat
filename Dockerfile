FROM alpine:latest

RUN set -x && apk update && apk add \
    socat \
    && rm -rf /var/cache/apk/*

ENTRYPOINT [ "socat" ]
CMD [ "-v", "tcp-listen:2375,reuseaddr,fork", "unix-connect:/var/run/docker.sock" ]
