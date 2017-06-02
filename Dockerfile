FROM alpine:latest
MAINTAINER Chris Jones <chris@sysadminchris.com>
RUN apk add --update znc && rm -rf /var/cache/apk/*
USER znc
ENTRYPOINT  ["znc"]
CMD ["-f"]
