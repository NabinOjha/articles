FROM ruby:3.1.1
RUN mkdir /app 
WORKDIR /app
ENV RAILS_ENV=development
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
CMD ["rails", "server"]