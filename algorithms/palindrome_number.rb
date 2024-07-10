def is_palindrome(x)
  return false if x.negative?

  d = x.digits
  d[(d.size / 2)..].reverse.each_with_index do |val, i|
    return false if d[i] != val
  end
  true
end

p is_palindrome(12_321)
