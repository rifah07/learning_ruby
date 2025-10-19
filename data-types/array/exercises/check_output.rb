# first exercise
arr = %w[b a]
puts "Main array: #{arr}"
arr = arr.product(Array(1..3))
puts "Array after product: #{arr}"

arr.first.delete(arr.first.last)
puts "Array after deleting last element of first sub-array: #{arr}"

# second exercise
arr = %w[b a]
arr = arr.product([Array(1..3)])
puts "Array after product with nested array: #{arr}"
arr.first.delete(arr.first.last)
puts "Array after deleting last element of first sub-array: #{arr}"

# 3rd exercise
# how can you print 'example'
arr = [%w[test hello world], %w[example mem]]
puts arr.last.first
puts "Index of 'example': #{arr[1].index('example')}" # arr[1][0] is "example"

# 4th exercise
arr = [15, 7, 18, 5, 12, 8, 5, 1]
puts "Original array: #{arr}"
puts 'See the outputs below'
puts arr.index(5)
puts arr[5]
# puts arr.index[5] # prints nothing because index is a method, not an array

# 5th exercise
string = 'Welcome to America!'
a = string[6]
b = string[11]
c = string[18]
d = string[19] # This will return nil since index 19 is out of bounds for the string length
puts "Original string: #{string}"
puts "Character at index 6: #{a}"
puts "Character at index 11: #{b}"
puts "Character at index 18: #{c}"
puts "Character at index 19: #{d}"

# 6th exercise
# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

arr = %w[Ruby is fun to learn]
arr.each_with_index do |value, index|
  puts "Index #{index}: #{value}"
end

# 7th exercise
# Write a program that iterates over an array and builds a new array
# that is the result of incrementing each value in the original array by a value of 2.
# You should have two arrays at the end of this program,
# The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

arr = [1, 2, 3, 4, 5]

new_arr = arr.map do |value|
  value + 2
end

p "Main array: #{arr}"
p arr
p "New array: #{new_arr}"
p new_arr
