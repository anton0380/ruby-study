require 'date'

def sum(*params)
  params.reduce(:+)
end

p sum(4, 2, 1)

def leap_year
  date = Date.new
  time = Time.new
  Date.leap?(time.year)
end

p leap_year

table = { 1 => 'red', 2 => 'orange', 3 => 'yellow', 4 => 'green', 5 => 'blue', 6 => 'indigo', 7 => 'violet' }
color_name = gets.chomp
p table.key(color_name)