# Ruby version
FROM ruby:2.2.2

# Variable for images project
ENV NAME sharing

# Maintainer container
MAINTAINER "VAILLANT Jérémy" <vaillant.jeremy@dev-crea.com>

# MAJ system
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev ruby-bson

# Prepare container
RUN mkdir /$NAME
WORKDIR /$NAME

# Téléchargement des dépandences
ADD Gemfile /$NAME/Gemfile
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN bundle install
ADD . /$NAME
