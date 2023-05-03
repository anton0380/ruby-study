BLOCK_SIZE = 16
File.open('file.bin', 'rb') do |f|
  str = ""
  File.open('result_bin.txt', 'w') do |w|
    while buf = f.read(BLOCK_SIZE)
      str = buf.each_byte.map{ |b| "0x%02X, " % b }.join
      w.write str
      w.write "\r"
    end
  end
end