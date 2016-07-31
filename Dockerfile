FROM alpine:3.4

RUN apk update && \
  apk add \
    ca-certificates && \
  rm -rf /var/cache/apk/*

ADD drone-coverage /bin/
ENTRYPOINT ["/bin/drone-coverage"]
CMD ["publish"]
