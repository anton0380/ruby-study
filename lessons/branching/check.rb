if ARGV.size == 1
  # if ARGV[0].scan(/\D/).empty?
  if ARGV[0] =~ /^-?\d+$/
    puts 'integer'
  elsif ARGV[0] =~ /^-?\d+\.\d*$/ || ARGV[0] =~ /^-?\d*\.\d+$/
    puts 'float'
  else
    puts 'string'
  end
end
