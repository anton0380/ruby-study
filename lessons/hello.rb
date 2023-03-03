# frozen_string_literal: true

# Class for user information
class User
  # Output information about user
  # use parameters +name+ and +profession+
  #
  # ==== Examples
  #
  #  u = User.new('My name', 'My profession')
  #  puts u.fio
  #  puts u.profession
  def initialize(name, profession)
    @name = name
    @profession = profession
  end

  # Get user name information
  #
  # ==== Examples
  #
  # Illustrate the behaviour of the method using examples. Indent examples:
  #
  #  u = User.new('My name', 'My profession')
  #  puts u.fio
  def fio
    puts @name
  end

  def profession
    puts @profession
  end
end

puts 'Hello world!'
puts 'Hello Ruby!'
u = User.new('Anonymous', 'philosophy')
u.fio
u.profession
