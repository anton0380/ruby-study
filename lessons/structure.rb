# Test array pack

a = %w[a b c]
n = [65, 66, 67]
p a.pack('A3A3A3')   #=> "a  b  c  "
p a.pack('a3a3a3')   #=> "a\000\000b\000\000c\000\000"
p n.pack('ccc')      #=> "ABC"

my = [123, 123, 123, 123]
l = my.pack('CCC')
p l
