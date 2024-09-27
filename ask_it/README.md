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
rails db:migrate

search gem for update
bundle outdated (bundle out)
and for update
bundle update (bundle u)
add bootstrap with webpuck
yarn add bootstrap
update yarn
yarn upgrade


