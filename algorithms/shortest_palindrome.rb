# @param {String} s
# @return {String}

def shortest_palindrome(s)
  return s if s.size < 2
  chs = s.chars
  # return s if check_palindrome(chs)
  first_even = chs.size.even?
  first_iteration = true
  start = (chs.size + 1)/2
  start.times do |i|
    pos = start - i - 1
    if first_iteration
      if first_even
        res, str = check_even(chs, pos)
        return str if res
        res, str = check_odd(chs, pos)
        return str if res
      else
        res, str = check_odd(chs, pos)
        return str if res
      end
      first_iteration = false
      next
    end
    res, str = check_even(chs, pos)
    return str if res

    res, str = check_odd(chs, pos)
    return str if res

  end
end

def check_even(chs, pos)
  return [false, ''] if chs[pos] != chs[pos + 1]
  pos.times do |i|
    p1 = pos - i - 1
    p2 = pos + i + 2
    return [false, ''] if chs[p1] != chs[p2]
  end
  to_add = chs.size - (pos + 1) * 2
  add_part = chs[chs.size-to_add..]
  add_part.each do |ch|
    chs.unshift ch
  end
  [true, chs.join]
end

def check_odd(chs, pos)
  pos.times do |i|
    p1 = pos - i - 1
    p2 = pos + i + 1
    return [false, ''] if chs[p1] != chs[p2]
  end
  to_add = chs.size - pos * 2 - 1
  add_part = chs[chs.size-to_add..]
  add_part.each do |ch|
    chs.unshift ch
  end
  [true, chs.join]
end

def check_palindrome(chs)
  (chs.size/2).times do |i|
    return false if chs[i] != chs[chs.size-i-1]
  end
  true
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
# Output: "bbabb"

s = "aaaabbaa"
p shortest_palindrome s
# Output: "aabbaaaabbaa"

s = "aabba"
p shortest_palindrome s
# Output: "abbaabba"

s = 'b'
require 'benchmark'
bench = Benchmark.measure {
  shortest_palindrome s
}
puts bench.real # 18.123648691998824