FROM ruby:3.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /sc_hire_api

COPY Gemfile /sc_hire_api/Gemfile
COPY Gemfile.lock /sc_hire_api/Gemfile.lock

RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
