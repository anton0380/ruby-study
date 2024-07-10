def roman_to_int(s)
  rom = { 'I' => 1,
          'V' => 5,
          'X' => 10,
          'L' => 50,
          'C' => 100,
          'D' => 500,
          'M' => 1000 }
  result = 0
  prew = 2000
  s.chars.each do |c|
    result += rom[c]
    result -= 2 * prew if rom[c] > prew
    prew = rom[c]
  end
  result
end

p roman_to_int('III')
p roman_to_int('LVIII')
p roman_to_int('MCMXCIV')
