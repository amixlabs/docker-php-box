# About this Repo

This is the Git repo of the official Docker image for [amixsi/php-box](https://hub.docker.com/r/amixsi/php-box/).
See the Hub page for the full readme on how to use the Docker image and for information regarding contributing and issues.

Common build usage:

```bash
docker build \
  --build-arg "http_proxy" \
  --build-arg "https_proxy" \
  --build-arg "no_proxy" \
  -t amixsi/php-box:latest \
  .
```

Publish

```bash
docker login
docker push amixsi/centos
```