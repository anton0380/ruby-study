class Hello
  def hello
    now = Time.new
    case now.hour
    when 6...12
      puts 'Good morning'
    when 12...18
      puts 'Good day'
    when 18...24
      puts 'Good evening'
    when 0...6
      puts 'Good night'
    end
  end
end
