# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  substring = ''
  length = 0

  s.each_char do |char|
    substring = substring[substring.index(char) + 1..] if substring.include?(char)
    substring = "#{substring}#{char}"
    length = substring.length if substring.length > length
  end

  length
end
