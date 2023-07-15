require 'date'
now = Time.new
puts "\s\s\s\s#{now.strftime("%b")} #{now.year}"

def month_days(month,year=Date.today.year)
  mdays = [nil,31,28,31,30,31,30,31,31,30,31.30,31]
  mdays[2] = 29 if Date.leap?(year)
  mdays[month]
end

def calenar(month, year)
  days = month_days(month, year)
  list = *1..days
  list = 1..days
  p list
end

7.times do |i|
  puts "#{Date::DAYNAMES[i][0..1]}"
end
days = month_days(2,2011)
p days
calenar(4,2011)
