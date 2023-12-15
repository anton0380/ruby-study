#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @error = 'asdsafghdgh'
  erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
  erb :about
end

get '/contacts' do
  erb :contacts
end

get '/visit' do
  erb :visit
end

post '/visit' do
  @username = params[:username]
  @phone = params[:phone]
  @datetime = params[:datetime]
  @barber = params[:barber]
  @color = params[:color]

  hh = { username: 'Введите имя', phone: 'Введите телефон', datetime: 'Введите дату и время'}

  # hh.each do |key, value|
  #   if params[key] == ''
  #     @error = hh[key]
  #     return erb :visit
  #   end
  # end

  @error = hh.select { |key| params[key] == '' }.values.join(', ')
  return erb :visit unless @error == ''

  erb "OK! user name is #{@username}, #{@phone}, #{@datetime}, #{@barber}, #{@color}"
end
