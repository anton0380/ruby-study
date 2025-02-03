# Longest Strictly Increasing or Strictly Decreasing Subarray

# @param {Integer[]} nums
# @return {Integer}
def longest_monotonic_subarray(nums)
  inc = 1
  dec = 1
  cur_inc = 1
  cur_dec = 1
  i = 0
  nums.each do
    if i.zero?
      i = it
      next
    end
    if i > it
      cur_inc += 1
    else
      inc = [cur_inc, inc].max
      cur_inc = 1
    end
    if i < it
      cur_dec += 1
    else
      dec = [cur_dec, dec].max
      cur_dec = 1
    end
    i = it
  end
  inc = [cur_inc, inc].max
  dec = [cur_dec, dec].max
  [inc, dec].max
end

nums = [1,4,3,3,2]
puts "result #{longest_monotonic_subarray nums}"

# Output: 2

nums = [3,3,3,3]
puts "result #{longest_monotonic_subarray nums}"

# Output: 1

nums = [3,2,1]
puts "result #{longest_monotonic_subarray nums}"

# Output: 3