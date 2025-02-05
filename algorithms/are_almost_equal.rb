# Check if One String Swap Can Make Strings Equal

# @param {String} s1
# @param {String} s2
# @return {Boolean}
def are_almost_equal(s1, s2)
  a1 = s1.chars
  a2 = s2.chars
  different1 = nil
  different2 = nil
  changed = false
  a1.length.times do |i|
    next if a1[i] == a2[i]
    unless changed
      if different1.nil?
        different1 = a1[i]
        different2 = a2[i]
      else
        if different1 == a2[i] && different2 == a1[i]
          changed = true
          different1 = nil
        else
          return false
        end
      end
    else
      return false
    end
  end
  return false unless different1.nil?
  return true
end

s1 = "bank"
s2 = "kanb"
puts are_almost_equal s1, s2
# Output: true


s1 = "attack"
s2 = "defend"
puts are_almost_equal s1, s2
# Output: false

s1 = "kelb"
s2 = "kelb"
puts are_almost_equal s1, s2
# Output: true