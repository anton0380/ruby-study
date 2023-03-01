##
# Class for user information
class User
##
# Output information about user
# use parameters +name+ and +profession+
#
# = Example for use
#
#   u = User('My name', 'My profession)
#   puts u.fio
#   puts u.profession
  def initialize(name, profession)
    @name = name
    @profession = profession
  end

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