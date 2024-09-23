# @param {String} s
# @param {String[]} dictionary
# @return {Integer}
def min_extra_char(s, dictionary)
  check = Array.new(s.length, 1)
  dictionary.each do |v|
    start = 0
    loop do
      i = s[start..].index(v)
      break if i.nil?
      check[i...i+v.length] = Array.new(v.length, 0)
      start = i + 1
    end
  end
  check.reduce(&:+)
end

s = "leetscode"
dictionary = ["leet","code","leetcode"]
p min_extra_char s, dictionary
s = "sayhelloworld"
dictionary = ["hello","world"]
p min_extra_char s, dictionary