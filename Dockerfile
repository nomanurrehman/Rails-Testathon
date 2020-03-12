FROM ruby:2.7
RUN apt-get update -qq && apt-get install -y postgresql-client

# Add NodeJS to sources list
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -

# Add Yarn to the sources list
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y nodejs yarn

RUN mkdir /rails-testathon
WORKDIR /rails-testathon
COPY Gemfile /rails-testathon/Gemfile
COPY Gemfile.lock /rails-testathon/Gemfile.lock
RUN bundle install
COPY . /rails-testathon

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]