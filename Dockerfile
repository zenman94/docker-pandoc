FROM alpine:3.11
MAINTAINER Gaëtan Ars <zenman94@free.fr>

ENV PANDOC_VERSION 2.9.1.1

RUN wget -qO- https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/pandoc-${PANDOC_VERSION}-linux-amd64.tar.gz | tar xzf - && \
    mv pandoc-${PANDOC_VERSION}/* /usr/local && \
    chmod +x /usr/local/bin/pandoc*

CMD ["sh"]
