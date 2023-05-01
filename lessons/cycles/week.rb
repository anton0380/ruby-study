require 'date'
now = Time.new
today = Date.new(now.year, now.month, now.day+3)
day_number = today.cwday
puts "week: #{today-day_number+1} - #{today-day_number+7}"
