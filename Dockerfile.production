# Ruby version alpine
FROM ruby:alpine

MAINTAINER Jeremy VAILLANT <vaillant.jeremy@dev-crea.com>

# Update system
RUN apk update \
  && apk upgrade \
  && apk add --no-cache build-base nodejs \
  && rm -rf /var/cache/apk/*

# Name of Project
ENV PROJECT dinin

# Prepare container
RUN mkdir /$PROJECT
WORKDIR /$PROJECT

# Download dependency
ADD Gemfile /$PROJECT/
RUN touch Gemfile.lock

# Execute gems install
RUN bundle install --without development local test

# Add files
ADD . /$PROJECT

RUN bundle exec rake assets:precompile
RUN whenever --update-crontab

EXPOSE 3000
