# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_subarray_sum(nums, k)
  count = nums.length - nums.length % k
  sorted_nums = nums.sort
  sorted_nums.last(count).sum
end

nums = [1,2]
k = 1
puts max_subarray_sum nums, k # 3

nums = [-1,-2,-3,-4,-5]
k = 4
puts max_subarray_sum nums, k # -10

nums = [-5,1,2,-3,4]
k = 2
puts max_subarray_sum nums, k # 4

nums = [-10,-1]
k = 1
puts max_subarray_sum nums, k # -1