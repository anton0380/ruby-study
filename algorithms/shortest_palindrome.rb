# @param {String} s
# @return {String}
def shortest_palindrome(s)
  return '' if s.size.zero?

  pos = 0
  min_len = s.size - 1
  chs = s.chars
  chs[1...chs.size-1].each_with_index do |ch, i|
    res, len =  check(chs, i+1)
    if res and min_len > len
      min_len = len
      pos = i+1
    end
  end
  create(chs, pos, min_len)
end

def check(chs, i)
  min_len = [chs.size - i - 1, i].max
  min_len.times do |j|
    p1 = i - j - 1
    p2 = i + j + 1
    return [true, min_len] if p1 < 0 or p2 >= chs.size

    v1 = chs[i - j - 1]
    v2 = chs[i + j + 1]
    return [false, min_len] if v1 != v2
  end
  [true, min_len]
end

def create(chs, pos, len)
  res = []
  res.push chs[pos]
  len.times do |i|
    p1 =  pos - i - 1
    p2 =  pos + i + 1
    if p1.negative?
      res.push chs[p2]
      res.unshift chs[p2]
    else
      res.push chs[p1]
      res.unshift chs[p1]
    end
  end
  res.join
end

s = "aacecaaa"
p shortest_palindrome s
# Output: "aaacecaaa"

s = "abcd"
p shortest_palindrome s
# Output: "dcbabcd"