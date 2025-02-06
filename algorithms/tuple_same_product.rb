# Tuple with Same Product

require 'benchmark'

# @param {Integer[]} nums
# @return {Integer}
def tuple_same_product(nums)
  arr = []
  nums.each do |v1|
    nums.each do |v2|
      nums.each do |v3|
        nums.each do |v4|
          nested = [v1, v2, v3, v4]
          if nested.uniq.length == 4
            if v1 * v2 == v3 * v4
              arr.push(nested)
            end
          end
        end
      end
    end
  end
  arr.length
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

bench = Benchmark.measure {
  p tuple_same_product nums
}
puts bench.real # here 1.9588203409984999