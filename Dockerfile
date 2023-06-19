FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs


WORKDIR /var/www/boleto_solar
COPY Gemfile /var/www/boleto_solar/Gemfile
COPY Gemfile /var/www/boleto_solar/Gemfile.lock


RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]