# @param {String} expression
# @return {Integer[]}
def diff_ways_to_compute(expression)
  numbers = expression.split(/\D/).map(&:to_i)
  operators = expression.chars - ('0'..'9').to_a
  check(numbers, operators)
end

def check(numbers, operators)
  case operators.size
  when 0
    return numbers
  when 1
    return [numbers[0].send(operators[0], numbers[1])]
  end
  res = []
  operators.each_with_index do |operator, i|
    left = check(numbers[..i], operators[...i])
    right = check(numbers[i+1..], operators[i+1..])
    left.each do |v1|
      right.each do |v2|
        res << v1.send(operator, v2)
      end
    end
  end
  res
end

expression = "2-1-1"
p diff_ways_to_compute expression
# Output: [0,2]

expression = "2*3-4*5"
p diff_ways_to_compute expression
# Output: [-34,-14,-10,-10,10]