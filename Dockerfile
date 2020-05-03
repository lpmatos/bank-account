ARG RUBY_VERSION=2.6.5-alpine3.10

FROM ruby:${RUBY_VERSION} as base
FROM base as builder

RUN gem install rake bundle

COPY [ "./Gemfile", "." ]
COPY [ "./Rakefile", "." ]

RUN rake main:install && \
    rm -rf /usr/local/bundle/cache/*.gem && \
    find /usr/local/bundle/gems/ -name "*.c" -delete && \
    find /usr/local/bundle/gems/ -name "*.o" -delete

FROM base

LABEL maintainer="Lucca Pessoa da Silva Matos - luccapsm@gmail.com" \
        org.label-schema.version="1.0.0" \
        org.label-schema.release-data="02-05-2020" \
        org.label-schema.url="https://github.com/lpmatos/bank-account" \
        org.label-schema.ruby="https://www.ruby-lang.org/pt/" \
        org.label-schema.name="Bank Account Manager"

ENV HOME=/usr/src/code

RUN set -ex && apk update
RUN apk add --update --no-cache \
      'su-exec>=0.2'
RUN addgroup -g 1000 ruby && adduser -u 999 -G ruby -h ${HOME} -s /bin/sh -D ruby && \
    mkdir -p ${HOME} && chown -hR ruby:ruby ${HOME}

WORKDIR ${HOME}

USER ruby

COPY --from=builder [ "/usr/local/bundle/", "/usr/local/bundle/" ]
COPY --chown=ruby:ruby [ "code", "." ]
COPY [ "./docker-entrypoint.sh", "/usr/local/bin/" ]

RUN find ./ -iname "*.rb" -type f -exec chmod a+x {} \; -exec echo {} \;;

ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "ruby", "./main.rb", "--help" ]
