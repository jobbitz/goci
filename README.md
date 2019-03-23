# GoCI
Check the [docker page](https://hub.docker.com/r/jobbitz/goci) for this image

This is a docker container for testing go code. The container contains:
* [Golang](https://golang.org)
* [Golangci-linter](https://github.com/golangci/golangci-lint)
* [Go dep](https://github.com/golang/dep)

## Usage
using in docker:
```bash
$ docker run jobbitz/goci
```

In CI scrips:
```yaml
image: jobbitz/goci
```
