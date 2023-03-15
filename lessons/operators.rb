num = 3
value_pow = 3
puts (1..(value_pow - 1)).reduce(num) { |res| res * num }
a = 64
puts "even: #{(a & 1).zero?}"
fst = 10
snd = 20
fst, snd = snd, fst
puts "fst = #{fst}, snd = #{snd}"
pi = 3.14159265358979
puts "#{pi - pi % 0.01}"

# x and y in range 0..255
class Coder
  @@FORM = %i[circle triangle square point]
  @@COLORS = %i[red orange yellow green blue violet pink]
  def code(form, x, y, color)
    frm = (0...@@FORM.size).reduce(0) { |p, el| @@FORM[el] == form ? el : p }
    clr = (0...@@COLORS.size).reduce(0) { |p, el| @@COLORS[el] == color ? el : p }
    frm + (clr << 2) + (x << (2 + 3)) + (y << (2 + 3 + 8))
  end

  def decode(num)
    frm = num & 0b11
    clr = (num >> 2) & 0b111
    x = (num >> (2 + 3)) & 0xff
    y = (num >> (2 + 3 + 8)) & 0xff
    puts @@FORM[frm], @@COLORS[clr], x, y
  end
end

c = Coder.new
code_num = c.code(:point, 1, 2, :green)
puts code_num
c.decode(code_num)
