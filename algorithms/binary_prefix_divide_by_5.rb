# @param {Integer[]} nums
# @return {Boolean[]}
def prefixes_div_by5(nums)
  result = []
  value = 0
  nums.each do |element|
    value = value*2 + element
    result << (value % 5 == 0)
  end
  result
end

nums = [1,0,1]
p prefixes_div_by5 nums