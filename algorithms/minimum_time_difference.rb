MINUTES_IN_DAY = 60 * 24

def diff(a, b)
  v = []
  if a >= b
    v << a - b
    v << MINUTES_IN_DAY + b - a
  else
    v << b - a
    v << MINUTES_IN_DAY + a - b
  end
  v.min
end

# @param {String[]} time_points
# @return {Integer}
def find_min_difference(time_points)
  times = []
  time_points.each do |t|
    h, m = t.split(':').map(&:to_i)
    times << h * 60 + m
  end
  min_diff = MINUTES_IN_DAY
  times[..times.size-1].each_with_index do |t1, i|
    times[i+1..].each do |t2|
      delta = diff(t1, t2)
      min_diff = delta if delta < min_diff
    end
  end
  min_diff
end

time_points = ['23:59', '00:00'] # Output: 1
puts find_min_difference(time_points)
time_points = ['00:00', '23:59', '00:00'] # Output: 0
puts find_min_difference(time_points)
