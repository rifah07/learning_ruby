#  Where it really differs from each is the returned value.
# map creates and returns a new array containing the values returned by the block
a = [1, 2, 3, 4, 5]
puts "Main array: #{a}"
b = a.each do |i|
  puts "Inside each: #{i * 2}"
end

puts "After each: #{b}"
puts a == b

# In this case, b will be the original array a, not a new one.
# To create a new array with the results, use map instead of each.
# Using map to create a new array with doubled values
# The original array a remains unchanged.
c = a.map do |i|
  i * 2
end
puts "After map: #{c}"
puts a == c
puts "Original array: #{a}"
