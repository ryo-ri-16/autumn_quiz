FROM ruby:3.2

WORKDIR /app

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN RAILS_ENV=production bundle exec rails assets:precompile

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]

ARG SECRET_KEY_BASE=dummy_key
ENV SECRET_KEY_BASE=$SECRET_KEY_BASE
RUN RAILS_ENV=production bundle exec rails assets:precompile
