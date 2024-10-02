# AskIt

ruby 3.2.2
node 21.0.0
yarn 1.22.19

rails new ask_it -T --css bootstrap -j webpack --skip-hotwire

For start AskIt use command:
bin/dev

Routes list
http://127.0.0.1:3000/rails/info/routes
or command rails routes

If used yarn version 2+
instead of command yarn upgrade use command yarn upgrade-interactive
For this working need install plugin: yarn plugin import interactive-tools

create database
rails db:create RAILS_ENV=development
rails g model Question title:string body:text
rails g model Answer body:text question:belongs_to
rails db:migrate

search gem for update
bundle outdated (bundle out)
and for update
bundle update (bundle u)
add bootstrap with webpuck
yarn add bootstrap
update yarn
yarn upgrade

for apply seeds use
rails db:seed

for kaminagi
rails g kaminari:config
rails g kaminari:views default

registration
rails g model User email:string name:string password_digest:string

gem draper
rails generate draper:install
rails generate decorator User

for drop down in nav menu
yarn add @popperjs/core

for remember user
rails g migration add_remember_token_digest_to_users remember_token_digest:string

in development group add gems
gem 'rubocop', require: false
gem 'rubocop-rails', require: false
gem 'rubocop-performance', require: false

add to project .rubocop.yml
bundle exec rubocop
aggressive mode
bundle exec rubocop -A
or
bundle exec rubocop -a

for stop in pry-rails use
binding.pry