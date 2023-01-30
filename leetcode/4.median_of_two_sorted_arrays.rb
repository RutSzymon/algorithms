def find_median_sorted_arrays(nums1, nums2)
  merged = (nums1 + nums2).sort
  length = merged.length
  (merged[(length - 1) / 2] + merged[length / 2]) / 2.0
end

puts find_median_sorted_arrays([1,2], [])
