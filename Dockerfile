FROM ubuntu:24.04

ENV LANG=C.UTF-8

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    hello=2.10-* \
    && rm -rf /var/lib/apt/lists/*

LABEL org.opencontainers.image.source="https://github.com/tueda/test-container-registry"
LABEL org.opencontainers.image.description="Minimal public multi-arch example on GitHub Container Registry"
LABEL org.opencontainers.image.licenses="MIT"

CMD ["hello"]
