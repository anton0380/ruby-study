if ARGV.size == 1
  if ARGV[0] =~ /^-?\d+\.?\d*$/ || ARGV[0] =~ /^-?\d*\.?\d+$/
    puts 'zero' if ARGV[0].to_f.zero?
    puts 'positive' if ARGV[0].to_f.positive?
    puts 'negative' if ARGV[0].to_f.negative?
  else
    puts 'not a number'
  end
end
