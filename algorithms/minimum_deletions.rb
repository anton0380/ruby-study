# @param {String} s
# @return {Integer}
def minimum_deletions(s)
  v = Array.new(s.size, 0)
  count = 0
  s.chars.each_with_index do |ch, i|
    v[i] = count
    count += 1 if ch == 'b'
  end
  count = 0
  s.reverse.chars.each_with_index do |ch, i|
    v[s.size - 1 - i] += count
    count += 1 if ch == 'a'
  end
  v.min
end

puts minimum_deletions "aababbab"
puts minimum_deletions "bbaaaaabb"