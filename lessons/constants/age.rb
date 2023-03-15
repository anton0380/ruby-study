require 'date'
year = ARGV[0].to_i
month = ARGV[1].to_i
day = ARGV[2].to_i
now = Time.new
dif = Date.new(now.year, now.month, now.day) - Date.new(year, month, day)
puts dif.to_i
