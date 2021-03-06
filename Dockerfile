FROM golang:1.8.2-alpine

RUN apk add --update git && apk add --update make && rm -rf /var/cache/apk/*

ADD . /go/src/github.com/${GITHUB_ORG:-ernestio}/group-store
WORKDIR /go/src/github.com/${GITHUB_ORG:-ernestio}/group-store

RUN make deps && go install

ENTRYPOINT ./entrypoint.sh
