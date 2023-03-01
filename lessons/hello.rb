class User
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