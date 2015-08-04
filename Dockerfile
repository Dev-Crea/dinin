# Ruby version
FROM ruby:2.2.2

# Maintainer container
MAINTAINER "VAILLANT Jérémy" <vaillant.jeremy@dev-crea.com>

# MAJ system
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev ruby-bson

# Prepare container
RUN mkdir /cube
WORKDIR /cube

# Téléchargement des dépandences
ADD Gemfile /cube/Gemfile
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN bundle install
ADD . /cube
