# @param {String} s
# @return {String}
def reverse_parentheses(s)
  result = s
  loop do
    i1 = result.index('(')
    i2 = nil
    if i1
      i2 = i1 + 1
      loop do
        i2 = result.index(')', i2) if i2
        substr = result[i1 + 1..i2 - 1]
        break if substr.count('(') == substr.count(')')

        i2 += 1
      end
    end
    return result unless i1

    center = result[i1 + 1..i2 - 1].reverse
    center.gsub!('(', 'A')
    center.gsub!(')', '(')
    center.gsub!('A', ')')
    result = result[...i1] + center + result[i2 + 1..]
  end
end

puts reverse_parentheses('(abcd)')
puts reverse_parentheses('(u(love)i)')
puts reverse_parentheses('(ed(et(oc))el)')
puts reverse_parentheses('ta()usw((((a))))') # "tauswa"
