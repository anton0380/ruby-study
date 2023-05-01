print 'input first number: '
first = gets.chomp.to_i
print 'input second number: '
second = gets.chomp.to_i
while second == 0
    print 'second must not be zero: '
    second = gets.chomp.to_i
end
puts "first = #{first}"
puts "second = #{second}"
puts "div = #{first/second}"