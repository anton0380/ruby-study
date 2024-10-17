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

## pry-rails
For stop in pry-rails use
binding.pry

## Esbuild
rails javascript:install:esbuild

## Lokalise rails
rails g lokalise_rails:install
rails lokalise_rails:export

## Migrations
rails g migration add_user_id_to_answers user:belongs_to
rails g migration add_user_id_to_questions user:belongs_to
rails g migration remove_default_user_id_from_questions_answers
rails g migration add_gravatar_hash_to_users gravatar_hash

## Comments
rails g model Comment body:string commentable:references{polymorphic} user:belongs_to

## Bullet
bundle exec rails g bullet:install
Would you like to enable bullet in test environment? (y/n) n

## Tags
rails g model Tag title:string
rails g model QuestionTag question:belongs_to tag:belongs_to
yarn add select2 jquery
yarn add select2-bootstrap-5-theme
yarn remove select2-bootstrap-5-theme select2 jquery
yarn add tom-select

## Roles
rails g migration add_role_to_users role:integer

## Pundit
rails g pundit:install

## Reset password
rails g migration add_password_reset_token_and_password_reset_token_sent_at_to_users password_reset_token:string:index password_reset_token_sent_at:datetime