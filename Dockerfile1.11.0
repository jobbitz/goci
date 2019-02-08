FROM golang:1.11.0-alpine3.7

RUN apk update  && \
  apk upgrade --update-cache --available  && \
  apk add git make curl perl bash build-base zlib-dev ucl-dev 

RUN git clone https://github.com/upx/upx.git  && cd upx && \
  git submodule update --init --recursive  && \
  make all  && cp -r src/upx.out /usr/local/bin/upx && \
  rm -rf /var/cache/apk/*

RUN curl -s -L https://git.io/vp6lP | sh

RUN curl -s https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

RUN go get github.com/alecthomas/gometalinter && \
  gometalinter --install

WORKDIR $GOPATH
