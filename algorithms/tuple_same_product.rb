# Tuple with Same Product

require 'benchmark'

# @param {Integer[]} nums
# @return {Integer}
def tuple_same_product(nums)
  count = 0
  len = nums.length
  (0...len).each do |i1|
    (i1+1...len).each do |i2|
      (i1+1...len).each do |i3|
        (i3+1...len).each do |i4|
          if nums[i1] * nums[i2] == nums[i3] * nums[i4]
            count += 1
          end
        end
      end
    end
  end
  count * 8
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
p tuple_same_product nums
# 2856

nums = [549,758,620,258,688,676,415,5,12,744,440,808,889,355,233,810,312,822,910,210,570,203,593,874,412,518,22,251,708,497,725,180,826,653,629,257,330,90,719,80,849,924,313,600,107,877,164,33,132,2,124,729,57,394,890,891,772,205,908,236,987,273,811,428,449,206,37,373,158,853,955,171,564,393,932,701,292,363,89,427,76,569,144,484,869,325,978,204,940,411,234,94,907,288,408,977,473,604,835,581]
p tuple_same_product nums
# 480

nums = [161,388,242,520,558,671,127,769,709,288,855,673,438,788,649,258,192,391,743,868,603,104,23,705,328,918,707,943,792,835,146,132,508,214,552,300,133,504,999,79,598,917,843,366,564,11,71,70,615,605,318,218,191,773,344,37,844,424,273,791,884,755,685,913,829,962,964,500,464,90,210,873,271,298,479,361,177,320,359,916,484,409,805,136,383,533,268,526,19,634,149,59,691,560,539,750,433,517,17,701]
bench = Benchmark.measure {
  p tuple_same_product nums
}
# 184
puts bench.real # here 0.9728464930012706