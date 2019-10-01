FROM golang:1.13.1-alpine3.10

RUN apk add --update git gcc libc-dev &&\
    go get -u github.com/golang/dep/cmd/dep &&\
    go get -u github.com/rakyll/gotest &&\
    go get -u golang.org/x/tools/cmd/godoc &&\
    rm -rf /var/cache/apk/* &&\
    echo

CMD godoc --http=0.0.0.0:8080
