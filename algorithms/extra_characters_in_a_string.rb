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
      check[start+i...start+i+v.length] = Array.new(v.length, 0)
      start += i + 1
    end
  end
  check.reduce(&:+)
end

# s = "leetscode"
# dictionary = ["leet","code","leetcode"]
# p min_extra_char s, dictionary
# s = "sayhelloworld"
# dictionary = ["hello","world"]
# p min_extra_char s, dictionary

# s ="dwmodizxvvbosxxw"
# dictionary = ["ox","lb","diz","gu","v","ksv","o","nuq","r","txhe","e","wmo","cehy","tskz","ds","kzbu"]
# require 'benchmark'
# bench = Benchmark.measure {
#   p min_extra_char s, dictionary
# }
# puts bench.real

# s = "dwmodizxvvbosxxw"
# dictionary = ["ox","lb","diz","gu","v","ksv","o","nuq","r","txhe","e","wmo","cehy","tskz","ds","kzbu"]
# p min_extra_char s, dictionary # need 7

s = "kevlplxozaizdhxoimmraiakbak"
dictionary = ["yv","bmab","hv","bnsll","mra","jjqf","g","aiyzi","ip","pfctr","flr","ybbcl","biu","ke","lpl","iak","pirua","ilhqd","zdhx","fux","xaw","pdfvt","xf","t","wq","r","cgmud","aokas","xv","jf","cyys","wcaz","rvegf","ysg","xo","uwb","lw","okgk","vbmi","v","mvo","fxyx","ad","e"]
p min_extra_char s, dictionary # need 9