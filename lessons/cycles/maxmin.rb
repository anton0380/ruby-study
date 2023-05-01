arr = []
(1..10).each do
  arr.push rand(100)
end
p arr
puts "min = #{arr.min}"
puts "max = #{arr.max}"