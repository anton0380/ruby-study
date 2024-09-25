# @param {String[]} words
# @return {Integer[]}
def sum_prefix_scores(words)
  res = Array.new(words.size, 0)
  words.each_with_index do |word, i|
    word.size.times do |count|
      words.each do |w|
        res[i] += 1 if word[..count] == w[..count]
      end
    end
  end
  res
end

words = ["abc","ab","bc","b"]
p sum_prefix_scores words
# Output: [5,4,3,2]

words = ["abcd"]
p sum_prefix_scores words
# Output: [4]