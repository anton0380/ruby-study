# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  prefix = strs[0]
  strs[1..].each do |str|
    prefix = prefix[..str.size]
    prefix.chars.each_with_index do |ch, i|
      if ch != str[i]
        return '' if i.zero?

        prefix = prefix[..i - 1]
        break
      end
    end
    break if prefix == ''
  end
  prefix
end

puts longest_common_prefix(%w[flower flow flight])
puts longest_common_prefix(%w[dog racecar car])
