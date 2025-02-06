# Tuple with Same Product

require 'benchmark'

# @param {Integer[]} nums
# @return {Integer}
def tuple_same_product(nums)
  arr = []
  len = nums.length
  (0...len).each do |i1|
    (i1+1...len).each do |i2|
      (0...len).each do |i3|
        (0...len).each do |i4|
          nested = [nums[i1], nums[i2], nums[i3], nums[i4]]
          if nested.uniq.length == 4
            if nested[0] * nested[1] == nested[2] * nested[3]
              arr.push(nested)
            end
          end
        end
      end
    end
  end
  arr.length * 2
end

# Example 1:

nums = [2,3,4,6]
p tuple_same_product nums
# Output: 8
# Explanation: There are 8 valid tuples:
# (2,6,3,4) , (2,6,4,3) , (6,2,3,4) , (6,2,4,3)
# (3,4,2,6) , (4,3,2,6) , (3,4,6,2) , (4,3,6,2)

# Example 2:

nums = [1,2,4,5,10]
p tuple_same_product nums
# Output: 16
# Explanation: There are 16 valid tuples:
# (1,10,2,5) , (1,10,5,2) , (10,1,2,5) , (10,1,5,2)
# (2,5,1,10) , (2,5,10,1) , (5,2,1,10) , (5,2,10,1)
# (2,10,4,5) , (2,10,5,4) , (10,2,4,5) , (10,2,5,4)
# (4,5,2,10) , (4,5,10,2) , (5,4,2,10) , (5,4,10,2)

nums = [195,165,57,252,52,44,42,3,128,54,150,182,120,12,17,228,26,342,75,126,110,6,66,143,77,70,65,21,55,133,221,288,104,176,255,272,360,95,200,91,7,39,135,63,323,78,209,40,171,80]
p tuple_same_product nums
# 2536

nums = [68,21,323,260,160,91,156,63,15,88,171,342,117,128,6,255,60,90,26,39,168,104,2,285,34,208,204,252,234,304,24,65,220,32,272,153,16,182,13,176,187,50,5,80,190,12,42,38,216,300]

bench = Benchmark.measure {
  p tuple_same_product nums
}
# 2856
puts bench.real # here 1.1049060369987274