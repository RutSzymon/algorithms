# @param {String[]} strs
# @return {Integer}

def min_deletion_size(strs)
  strs.map(&:bytes).transpose.count { _1 != _1.sort }
end

puts min_deletion_size(%w[cba daf ghi])
puts min_deletion_size(%w[a b])
puts min_deletion_size(%w[zyx wvu tsr])
