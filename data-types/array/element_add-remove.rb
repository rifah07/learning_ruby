num_array = [1, 2, 3, 4, 5]
# add elements to the end of an array
puts 'The first approach to add elements to an array is using the push method.'
num_array.push(6)
puts num_array.inspect  #=> [1, 2, 3, 4, 5, 6]
puts 'The push method can also take multiple arguments to add several elements at once.'
num_array.push(7, 8)

puts num_array.inspect  #=> [1, 2, 3, 4, 5, 6, 7, 8]
#  The inspect method returns the string representation of the array
num_array << 9
puts num_array.inspect  #=> [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts 'The second approach to add elements to an array is using the shovel operator.'
puts 'This operator is used to append elements to the end of an array.'
puts num_array.inspect  #=> [1, 2, 3, 4, 5, 6, 7, 8, 9]

# using unshift to add elements to the beginning of an array
puts 'The third approach to add elements to an array is using the unshift method.'
num_array.unshift(0)
puts num_array.inspect  #=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
num_array.unshift(-1, 10)
puts num_array.inspect  #=> [-2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


# remove elements from the end of an array
puts 'The first approach to remove elements from an array is using the pop method.'
num_array.pop
puts num_array.inspect  #=> [-1, 10, 0, 1, 2, 3, 4, 5, 6, 7, 8]
num_array.pop(2)
puts num_array.inspect  #=> [-1, 10, 0, 1, 2, 3, 4, 5, 6]

# remove elements from the beginning of an array
puts 'The second approach to remove elements from an array is using the shift method.'
num_array.shift
puts num_array.inspect  #=> [-1, 10, 0, 1, 2, 3, 4, 5, 6, 7, 8]
num_array.shift(2)
puts num_array.inspect  #=> [0, 1, 2, 3, 4, 5, 6]

# use reject!, replace
arr = %w[a b c d e f g h i j]

puts "Array before reject : #{arr.inspect}"

arr.reject! do |e|
  e =~ /[c-y]/
end

puts "Array after reject! : #{arr.inspect}"

# The reject! method removes elements from the array that match the condition.
# In this case, it removes all elements that are between 'c' and 'y'.

arr.replace(%w[x y z])
puts "Array after replace : #{arr.inspect}"
# The replace method replaces the contents of the array with the given elements.
# In this case, it replaces the array with ["x", "y", "z"].
