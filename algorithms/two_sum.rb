def two_sum(nums, target)
  h = {}
  nums.each_with_index do |num, i|
    h[num] = i
  end
  nums.each_with_index do |num, i1|
    i2 = h[target - num]
    return [i1, i2] if i2 and i1 != i2
  end
end

puts "#{two_sum([2, 7, 11, 15], 9)} #{two_sum([2, 7, 11, 15], 9) == [0, 1]}"
puts "#{two_sum([3, 2, 4], 6)} #{two_sum([3, 2, 4], 6) == [1, 2]}"
puts "#{two_sum([3, 3], 6)} #{two_sum([3, 3], 6) == [0, 1]}"
