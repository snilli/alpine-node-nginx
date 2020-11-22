# alpine-nginx-nodejs

A tiny docker image for JavaScript with major stream workflow CI (like jenkins), Only 72MB in size! 🎉🎉🎉

all command
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker build .
docker build -t me/alpine-nginx-nodejs .
docker run --publish 80:8080 --detach --name node-nginx

The ```latest``` tag is currently:

- nginx:1.15.7-alpine

- libuv:latest

- nodejs:12.18.0

- npm:6.14.4

- yarn:1.16.0

## Tags

To use a specific combination of nginx and node.js see the following table of available image tags.

Tag | Nginx version | Node.js version | Npm version | Yarn version
--- | --- | --- | --- | ---
`latest` | 1.15.7-alpine | 12.18.0 | 6.14.4 | 1.22.4
`10.16.0` | 1.15.7-alpine | 10.16.0 | 6.9.0 | 1.16.0
`8.14.0` | 1.15.7-alpine | 8.14.0 | 6.4.1 | 1.16.0
`6.10.3` | 1.15.7-alpine | 6.10.3 | 3.10.10 | 1.16.0


## Hacking

To test changes locally, you can edit this image and rebuild it, replacing the hoosin/alpine-nginx-nodejs image on your machine:

```shell
docker build -t hoosin/alpine-nginx-nodejs .
```

To return to the official image:

```shell
docker pull hoosin/alpine-nginx-nodejs
```

## Use as base image
```Dockerfile
FROM hoosin/alpine-nginx-nodejs:latest
```

## Example
An example of using this image can be found in [example](https://github.com/hoosin/alpine-nginx-nodejs/tree/master/example).
