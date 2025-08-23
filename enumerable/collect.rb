nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts "Even numbers:"
even_nums = nums.collect do |num|
  if num % 2 == 0
   p num
  end
end