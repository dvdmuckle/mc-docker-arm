FROM alpine:latest
RUN apk add --no-cache curl && curl -sSLO https://dl.minio.io/client/mc/release/linux-arm/mc && chmod +x mc && \
    mv mc /usr/bin/
CMD ["/usr/bin/mc"]
