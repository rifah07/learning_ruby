num_array = [1, 2, 3, 4, 5]
# add elementas to the end of an array
puts "The first approach to add elements to an array is using the push method."
num_array.push(6,7)

puts num_array.inspect  #=> [1, 2, 3, 4, 5, 6, 7]

num_array << 8
puts "The second approach to add elements to an array is using the shovel operator."
puts "This operator is used to append elements to the end of an array."
puts num_array.inspect  #=> [1, 2, 3, 4, 5, 6, 7, 8]