# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

bundle install
RAILS_ENV=production rake db:{create,migrate,seed}

in production.rb:
comment config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
and config.assets.compile = true
RAILS_ENV=production rails assets:precompile
RAILS_ENV=production rails s
----------
stop server
rails assets:clobber
rails assets:precompile
start server
