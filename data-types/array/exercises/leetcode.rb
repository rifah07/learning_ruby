# @param {Integer[]} nums
# @return {Boolean}

# 217
# this got TLA:
def contains_duplicate(nums)
  nums.sort!
  n = nums.length
  num2 = []

  (0..n - 1).each do |i|
    temp = nums[i]
    return true if num2.include?(temp)

    num2 << temp
  end

  false
end

# this is accepted:
def contains_duplicate(nums)
  num2 = Set.new

  nums.each do |num|
    return true if num2.include?(num)

    num2.add(num)
  end
  false
end


nums = [1, 2, 3, 4, 5, 6, 6]
puts contains_duplicate(nums)
