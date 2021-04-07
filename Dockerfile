FROM ruby:3.0.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /places-api
COPY Gemfile /places-api/Gemfile
COPY Gemfile.lock /places-api/Gemfile.lock
RUN bundle install
COPY . /places-api


COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000


CMD ["rails", "server", "-b", "0.0.0.0"]