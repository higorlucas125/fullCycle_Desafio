FROM golang:1.19 as builder

WORKDIR /usr/src/app

RUN go mod init example.com/code
RUN go mod download && go mod verify

ADD . /usr/src/app
RUN go build -v /usr/src/app/code.go