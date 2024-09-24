# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer}
def longest_common_prefix(arr1, arr2)
  str1 = arr1.map(&:to_s).map(&:chars)
  str2 = arr2.map(&:to_s).map(&:chars)
  longest = 0
    str1.each do |s1|
      str2.each do |s2|
        l = 0
        min = [s1.size, s2.size].min
        min.times do |i|
          if s1[i] == s2[i]
            l += 1
          else
            break
          end
        end
        longest = [longest, l].max
      end
    end
  longest
end

arr1 = [1,10,100]
arr2 = [1000]
p longest_common_prefix arr1, arr2
# Output: 3
arr1 = [1,2,3]
arr2 = [4,4,4]
puts longest_common_prefix arr1, arr2
# Output: 0
