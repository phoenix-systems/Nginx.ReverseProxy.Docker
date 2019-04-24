# Nginx.ReverseProxy.Docker
The purpose of that docker container is to proxy traffic to some url that must be defined in enviroment variables. It can be used to automate/simplify deployments with traefik + docker-compose for services without high load.

## Params
The following environment params are supported
```
- TARGET_URL: Required. Url to where traffic will be proxied.
```

## Pre-built docker image
You can quickly run a container with a pre-built [docker image](https://hub.docker.com/r/phoenixsystemsag/nginx-reverse-proxy).

## Build docker image
Pull code from repository and run the following command:
```
docker build --pull -t nginx-reverse-proxy .
```
