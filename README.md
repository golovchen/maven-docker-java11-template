![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/golovchen/maven-docker-template)

[Docker hub](https://hub.docker.com/r/golovchen/maven-docker-template)

This is a template for [multi-stage build](https://docs.docker.com/develop/develop-images/multistage-build/) with Maven inside a Docker container.

```
$ docker build -t maven-docker-template .
$ docker run --rm -it maven-docker-template
Hello
```