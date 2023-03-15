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

  attr_reader :family, :surname

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

# Point class
class Point
  def initialize(x, y)
    @x = x
    @y = y
  end

  attr_reader :x, :y
end

p1 = Point.new(3, 6)
p2 = Point.new(-1, 5)
puts "distance = #{Math.sqrt((p1.x - p2.x)**2 + (p1.y - p2.y)**2)}"

puts $LOAD_PATH
puts "count elements in global constant $LOAD_PATH = #{$LOAD_PATH.size}"

# Car class
class Car
  @@car_types = Set[:car, :track]

  def set_type(type)
    @type = @@car_types === type ? type : nil
  end

  def type
    @type
  end
end

car1 = Car.new
car2 = Car.new
p car1.type
car1.set_type(:car)
car2.set_type(:track)
puts car1.type, car2.type
