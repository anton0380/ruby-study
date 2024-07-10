def min_operations(logs)
  result = 0
  logs.each do |log|
    case log
    when '../'
      result -= 1 if result.positive?
    when './'
      # do nothing
    else
      result += 1
    end
  end
  result
end

puts min_operations(['d1/', 'd2/', '../', 'd21/', './'])
puts min_operations(['d1/', 'd2/', './', 'd3/', '../', 'd31/'])
puts min_operations(['d1/', '../', '../', '../'])
