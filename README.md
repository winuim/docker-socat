# docker-socat

## Build image
```
docker build ./ -t socat:alpine
```

## socat start
```
docker run --rm -d -v /var/run/docker.sock:/var/run/docker.sock -p 127.0.0.1:2375:2375 --name=socat socat:alpine
```
