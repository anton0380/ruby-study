blocksize = 16
File.open('file.bin', 'rb') do |f|
  str = ""
  File.open('result_bin.txt', 'w') do |w|
    while buf = f.read(blocksize)
      str = buf.each_byte.map{ |b| "0x#{b.to_s(16)}, " }.join
      w.write str
  w.write "\r\n"
      puts str;
    end
  end
end