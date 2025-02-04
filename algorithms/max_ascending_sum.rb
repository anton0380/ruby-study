# Maximum Ascending Subarray Sum

# @param {Integer[]} nums
# @return {Integer}
def max_ascending_sum(nums)
  sum = 0
  cur_sum = 0
  prew = 0
  nums.each do
    if prew < it
      cur_sum += it
    else
      sum = [sum, cur_sum].max
      cur_sum = it
    end
    prew = it
  end
  [sum, cur_sum].max
end

nums = [10,20,30,5,10,50]
puts max_ascending_sum nums
# Output: 65

nums = [10,20,30,40,50]
puts max_ascending_sum nums
# Output: 150

nums = [12,17,15,13,10,11,12]
puts max_ascending_sum nums
# Output: 33