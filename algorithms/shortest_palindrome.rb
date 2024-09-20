# @param {String} s
# @return {String}
def shortest_palindrome(s)
  return s if s.size < 2

  pos = 0
  min_len = s.size - 1
  chs = s.chars
  chs[1..(chs.size-1)/2].each_with_index do |ch, i|
    res, len = check(chs, i+1)
    if res and min_len > len
      min_len = len
      pos = i+1
    end
  end
  find_double = false
  pos_double = 0
  len_double = s.size
  chs[...chs.size/2].each_with_index do |ch, i|
    res, len = check_double(chs, i)
    next unless res and len_double > len

    len_double = len
    pos_double = i
    find_double = true
  end
  return create_double(chs, pos_double, len_double) if find_double and len_double < min_len
  create(chs, pos, min_len)
end

def check(chs, i)
  min_len = [chs.size - i - 1, i].max
  min_len.times do |j|
    p1 = i - j - 1
    p2 = i + j + 1
    return [true, min_len] if p1 < 0 or p2 >= chs.size

    v1 = chs[p1]
    v2 = chs[p2]
    return [false, 0] if v1 != v2
  end
  [true, min_len]
end

def check_double(chs, i)
  return [false, 0] if chs[i] != chs[i+1]

  min_len = [chs.size - i - 2, i].max
  min_len.times do |j|
    p1 = i - j - 1
    p2 = i + j + 2
    return [true, min_len] if p1 < 0 or p2 >= chs.size

    v1 = chs[p1]
    v2 = chs[p2]
    return [false, 0] if v1 != v2
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

def create_double(chs, pos, len)
  res = []
  res.push chs[pos]
  res.push chs[pos+1]
  len.times do |i|
    p1 =  pos - i - 1
    p2 =  pos + i + 2
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

s = "abbacd"
p shortest_palindrome s
# Output: "dcabbacd"

s = "abb"
p shortest_palindrome s
# Output: "bbabb" need wrong answer, becouse 'abba' is in 4 letters