FROM ruby

ENV HOME=/usr/src/code

WORKDIR ${HOME}

COPY [ "./code", "." ]

ENTRYPOINT []

CMD []
