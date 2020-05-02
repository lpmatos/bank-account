ARG RUBY_VERSION=2.6.5-alpine3.10

FROM ruby:${RUBY_VERSION}

LABEL maintainer="Lucca Pessoa da Silva Matos - luccapsm@gmail.com" \
        org.label-schema.version="1.0.0" \
        org.label-schema.release-data="02-05-2020" \
        org.label-schema.url="https://github.com/lpmatos/bank-account" \
        org.label-schema.ruby="https://www.ruby-lang.org/pt/" \
        org.label-schema.name="Bank Account Manager"

ENV HOME=/usr/src/code

RUN set -ex && apk update

RUN gem install rake bundle

WORKDIR ${HOME}

COPY [ "./code", "." ]

COPY [ "./Gemfile", "." ]

COPY [ "./Rakefile", "." ]

RUN rake main:install

ENTRYPOINT []

CMD []
