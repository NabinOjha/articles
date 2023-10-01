# Dockerfile.rails
FROM ruby:3.2.0

RUN apt-get update && apt-get install -y nodejs

WORKDIR /app

ADD Gemfile Gemfile.lock /app/

RUN bundle install

ADD . /app

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
