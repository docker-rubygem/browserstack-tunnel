FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.3

RUN gem install browserstack-tunnel --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bstunnel"]
CMD ["--help"]
