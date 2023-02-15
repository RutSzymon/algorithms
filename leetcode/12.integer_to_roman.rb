# @param {Integer} num
# @return {String}
NUMBERS_MAP = {
  1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC',
  50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'
}

def int_to_roman(num)
  result = ''

  NUMBERS_MAP.each do |key, value|
    div = num / key
    result += value * div if div.positive?
    num -= (div * key)
  end

  result
end

puts int_to_roman(3)
puts int_to_roman(58)
puts int_to_roman(1994)
