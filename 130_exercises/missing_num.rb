def missing(nums)
  full_nums = (nums[0]..nums[-1]).to_a
  return_nums = []
  full_nums.each do |num|
    return_nums << num if nums.include?(num) == false
  end
  return_nums
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
p missing([1, 2, 3, 4]) == []