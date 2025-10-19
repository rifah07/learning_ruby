nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts 'Even numbers:'
nums.collect do |num|
  p num if num.even?
end
