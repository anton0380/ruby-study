str = "/-\\|"
100000.times do 
  str.size.times do |x| 
    print "\r#{str[x]}"
    sleep(0.2)
  end
end