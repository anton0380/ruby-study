# User information
class User
  def initialize
    @name = nil
    @family = nil
    @surname = nil
  end

  # attr_reader :name
  # attr_writer :name
  attr_accessor :name

  attr_reader :family
  
  def surname
    @surname
  end

  def set_family(family)
    @family = family
  end

  def set_surname(surname)
    @surname = surname
  end
end

user = User.new
user.name = 'my name'
user.set_family('my family')
user.set_surname('my surname')
puts user.name, user.family, user.surname
