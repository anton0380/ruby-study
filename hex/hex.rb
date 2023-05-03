BLOCK_SIZE = 16
pos = 0
File.open('file.hex', 'r') do |f|
  File.open('result_hex.txt', 'w') do |w|
    file_data = f.readlines.map(&:chomp)
    file_data.each do |data|
      count = data[1..2].to_i
      if count.nonzero?
        values =  data[9..(8+count*2)]
        (0..((count-1)*2)).step(2) do |x|
        w.write "0x#{values[x..x+1]}, "
        pos = pos + 1
        if pos > (BLOCK_SIZE - 1) then
          w.write "\r"
          pos = 0
        end
        end
      end
    end
  end
end