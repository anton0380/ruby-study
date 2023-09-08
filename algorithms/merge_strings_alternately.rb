def merge_alternately(word1, word2)
  merged_word = ''
  word2_pos = 0
  word1.each_char do |ch|
    merged_word += ch
    if word2_pos < word2.length
      merged_word += word2[word2_pos]
      word2_pos += 1
    end
  end
  merged_word + word2.slice(word2_pos..word2.length)
end

puts merge_alternately('asdf12345', 'zxcv')