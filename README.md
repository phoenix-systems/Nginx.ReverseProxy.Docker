# Nginx.ReverseProxy.Docker
The purpose of that docker container is to proxy traffic to some url that must be defined in enviroment variables. It can be used to automate/simplify deployments with traefik + docker-compose for services without high load.

## Params
The following environment params are supported
```
- TARGET_URL: Required. Url to where traffic will be proxied.
```

## Pre-built docker image
You can quickly run a container with a pre-built [docker image](https://hub.docker.com/r/phoenixsystemsag/nginx-reverse-proxy). Sample docker-compose.yaml with traefik:
```
version: '3'
services:
  reverse-proxy:
    image: phoenixsystemsag/nginx-reverse-proxy:1.0.0
    restart: unless-stopped
    expose:
      - 80
    networks:
      - web
      - default
    environment:
      - "TARGET_URL=http://example.local/"
    labels:
      - "traefik.docker.network=web"
      - "traefik.enable=true"
      - "traefik.port=80"
      - "traefik.frontend.redirect.entryPoint=https"
      - "traefik.frontend.rule=Host:example.com"
networks:
  web:
    external: true
```

## Build docker image
Pull code from repository and run the following command:
```
docker build --pull -t nginx-reverse-proxy .
```

