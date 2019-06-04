FROM golang:alpine

WORKDIR /venom/

RUN apk add git gcc musl-dev && \
    go get -u github.com/ovh/venom && \
    go install github.com/ovh/venom/cli/venom

ENTRYPOINT venom
