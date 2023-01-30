# @param {String} s
# @return {String}
def longest_palindrome(s)
  return s if palindrome?(s)

  s.length.downto(1).each do |end_index|
    (0..s.length - end_index).each do |start_index|
      str = s[start_index..start_index + end_index - 1]
      return str if palindrome?(str)
    end
  end
end

def palindrome?(str)
  str == str.reverse
end

puts longest_palindrome('babad')
puts longest_palindrome('cbbd')
