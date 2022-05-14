FROM ruby:3.1.2-bullseye

RUN mkdir -p /app
WORKDIR /app

RUN apt-get update && apt-get install -y \
  postgresql-client \
  && rm -rf /var/lib/apt/lists/*

COPY Gemfile* ./

RUN bundle install --jobs 4

ADD . /app

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
