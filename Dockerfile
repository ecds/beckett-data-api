FROM ruby:3.3.4

ARG RAILS_MASTER_KEY

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  postgresql-client \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

ENV RAILS_MASTER_KEY=$RAILS_MASTER_KEY
ENV RAILS_ENV=production

COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 3000
RUN chmod +x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
