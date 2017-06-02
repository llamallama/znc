FROM alpine:latest
MAINTAINER Chris Jones <chris@sysadminchris.com>
RUN apk add --update znc && rm -rf /var/cache/apk/*
RUN mkdir -p /home/znc/.znc
RUN chown -R znc:znc /home/znc/.znc
USER znc
ENTRYPOINT  ["znc"]
CMD ["-f"]
