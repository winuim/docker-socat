# docker-socat

## Build image
```
docker build ./ -t socat:alpine
```

## socat start
```
docker run --rm -d -p 127.0.0.1:2375:2375 --name=socat socat:alpine
```
