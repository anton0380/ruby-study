class User
  def initialize(first, last, middle)
    @first = first
    @last = last
    @middle = middle
  end

  def first
    @first
  end

  def last
    @last
  end

  def middle
    @middle
  end
end

arr = []
puts 'First user'
print 'input first name :'
first = gets.chomp
print 'input last name :'
last = gets.chomp
print 'input middle name :'
middle = gets.chomp
arr.push User.new(first, last, middle)
puts 'Second user'
print 'input first name :'
first = gets.chomp
print 'input last name :'
last = gets.chomp
print 'input middle name :'
middle = gets.chomp
arr.push User.new(first, last, middle)
puts 'Third user'
print 'input first name :'
first = gets.chomp
print 'input last name :'
last = gets.chomp
print 'input middle name :'
middle = gets.chomp
arr.push User.new(first, last, middle)
p arr