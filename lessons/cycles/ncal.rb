require 'date'
now = Time.new
puts "\s\s\s\s#{now.strftime("%b")} #{now.year}"

def month_days(month, year)
  mdays = [nil,31,28,31,30,31,30,31,31,30,31.30,31]
  mdays[2] = 29 if Date.leap?(year)
  mdays[month]
end

days = month_days(now.mon, now.year)
first_wday = Date.new(now.year, now.mon, 1).wday
nils = Array.new(6)
list = *1..days
all_days = nils + list
7.times do |i|
  print "#{Date::DAYNAMES[i][0..1]}"
  all_days.each_with_index do |v, n|
    if n % 7 == i
      if v.nil?
        print "   "
      else
        if v == now.day
          print " \e[7m%2d\e[27m" % v
        else
          print " %2d" % v
        end
      end
    end
  end
  puts ""
end
