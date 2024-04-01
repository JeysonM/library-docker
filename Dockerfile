FROM ruby:3.1.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem install rails bundler
WORKDIR /usr/src/app
COPY Gemfile /usr/src/app/Gemfile
COPY Gemfile.lock /usr/src/app/Gemfile.lock
RUN bundle install

COPY . .

