# Node Clear Linux - Docker image

[![Latest Version](https://img.shields.io/github/v/release/kiwfy/node-clear-linux.svg?style=flat-square)](https://github.com/kiwfy/node-clear-linux/releases)
[![Build Status](https://img.shields.io/github/actions/workflow/status/kiwfy/node-clear-linux/docker-image.yml?style=flat-square)](https://github.com/kiwfy/node-clear-linux/actions?query=workflow%3ACI)
![Docker Image Size](https://img.shields.io/docker/image-size/kiwfydev/node-clear-linux/latest)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

Docker image with Node using Clear Linux S.O

### How to use this image

Requires [Docker](https://www.docker.com/get-started).

Before get the image is necessary [authenticate](https://docs.github.com/pt/packages/using-github-packages-with-your-projects-ecosystem/configuring-docker-for-use-with-github-packages) in Github Package

You can run the container and service like so:

```sh
docker run -d docker.pkg.github.com/kiwfy/node-clear-linux/node-clear-linux:latest
```

Or with [Docker Hub](https://hub.docker.com/r/kiwfydev/node-clear-linux) image

```sh
docker run -d kiwfydev/node-clear-linux:latest
```

### Docker with compose tool

It's a good way to use [docker-compose](https://docs.docker.com/compose/). Example:

```
version: '3.7'
services:
    node:
        image: docker.pkg.github.com/kiwfy/node-clear-linux/node-clear-linux:latest
        container_name: node
        volumes:
            - ./:/usr/src/
```

### Get latest version

To found and verify what is latest image look at [Clear Linux CDN](https://cdn.download.clearlinux.org/latest)

### Development

Want to contribute? Great!

Make a change in image and be careful with your updates!

**Kiwfy - Open your code, open your mind!**
