# @param {String} s
# @return {Integer}
def roman_to_int(s)
  numbers_map = {
    'IV' => 4, 'IX' => 9, 'XL' => 40, 'XC' => 90, 'CD' => 400, 'CM' => 900,
    'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000
  }

  sum = 0
  numbers_map.each do |k, v|
    s = s.scan(k) { |match| sum += numbers_map[match] }.gsub(k, '')
  end

  sum
end
