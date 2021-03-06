FROM ruby:2.7.2-alpine

RUN apk add --update build-base git

LABEL "repository"="https://github.com/andrewmcodes/haml-lint-action"
LABEL "maintainer"="Andrew Mason <andrewmcodes@protonmail.com>"
LABEL "version"="0.0.2"

COPY lib /action/lib
COPY README.md LICENSE /

RUN gem install bundler

ENTRYPOINT ["/action/lib/entrypoint.sh"]
