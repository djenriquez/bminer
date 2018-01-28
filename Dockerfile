FROM nvidia/cuda:9.1-devel

ENV BMINER_VERSION=v5.2.0-4f20af3

RUN set -x \
  && apt-get update \
  && apt-get install -y --no-install-recommends curl ca-certificates \
  && curl -fSL https://www.bminercontent.com/releases/bminer-${BMINER_VERSION}-amd64.tar.xz -o bminer.tar.xz \
  && tar -xvf bminer.tar.xz \
  && ln -s /bminer-${BMINER_VERSION}/bminer /usr/local/bin/bminer \
  && apt-get remove -y curl \
  && apt autoremove -y \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["bminer"]

EXPOSE 3500

CMD ["-h"]