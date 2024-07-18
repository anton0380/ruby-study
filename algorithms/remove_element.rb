# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  copy = Array.new(nums)
  copy -= [val]
  copy.each_with_index do |el, i|
    nums[i] = el
  end
  copy.size
end