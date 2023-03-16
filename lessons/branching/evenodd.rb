if ARGV.size == 1
  if ARGV[0] =~ /^-?\d+$/
    puts 'even' if ARGV[0].to_i.even?
    puts 'not even' if ARGV[0].to_i.odd?
  else
    puts 'not a integer number'
  end
end
