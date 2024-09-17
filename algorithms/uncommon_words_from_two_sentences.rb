# @param {String} s1
# @param {String} s2
# @return {String[]}
def uncommon_from_sentences(s1, s2)
  words = s1.split + s2.split
  h = Hash.new(0)
  words.each do |word|
    h[word] += 1
  end
  h.map { |word, count| word if count == 1 }.compact
end

s1 = 'this apple is sweet'
s2 = 'this apple is sour'
p uncommon_from_sentences(s1, s2)
# Output: ["sweet","sour"]

s1 = 'apple apple'
s2 = 'banana'
p uncommon_from_sentences(s1, s2)
# Output: ["banana"]
