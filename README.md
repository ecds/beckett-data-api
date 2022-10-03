# README

## API Documentation

[Live Documentation](https://beckettapi.ecdsdev.org/docs/index.html)

## Ruby version

3.1.2

## System dependencies

* Elasticsearch
* PostgreSQL

## Database creation

~~~bash
rake db:create && rake db:migrate
~~~

## Update Elasticsearch Indices

~~~bash
rake searchkick:reindex:all
~~~

## Run the test suite

~~~bash
bundle exec rspec spec/
~~~

## Build Documentation

~~~bash
rake docs:generate
~~~

## Background Jobs

Restart Active Jobs for indexing and Big Sam update.

~~~bash
sudo service sidekiq-1 restart && sudo service sidekiq-2 restart
~~~

## Deployment Instructions

~~~bash
bundle exec cap production deploy
~~~
