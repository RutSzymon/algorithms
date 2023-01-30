# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.empty?

  prefix = ''
  first_element = strs.delete_at(0)
  first_element.each_char do |char|
    return prefix if strs.any? { |string| !string.start_with?(prefix + char) }

    prefix << char
  end
end
