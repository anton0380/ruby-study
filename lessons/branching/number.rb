if ARGV.size == 3 && ARGV[0].to_i == ARGV[0].to_f && ARGV[1].to_i == ARGV[1].to_f && ARGV[2].to_i == ARGV[2].to_f
  begin
    Integer(ARGV[0])
    Integer(ARGV[1])
    Integer(ARGV[2])
    puts ARGV.reduce(ARGV[0].to_i) { |max, cur| max > cur.to_i ? max : cur.to_i }
  rescue StandardError
  end
end
