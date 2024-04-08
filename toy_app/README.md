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

For create new application use
```
rails new toy_app
bundle install
bundle update
```

Use scaffold
```
rails g scaffold User name:string email:string
bundle exec rails db:migrate

rails g scaffold Micropost content:text user_id:integer
bundle exec rails db:migrate
```


