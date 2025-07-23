# Ruby also allows the use of negative indices,
# which return elements starting from the end of an array, starting at [-1]
str_array = ["This", "is", "a", "small", "array"]

puts str_array[0]            #=> "This"
puts str_array[1]            #=> "is"
puts str_array[4]            #=> "array"
puts str_array[-1]           #=> "array"
puts str_array[-2]           #=> "small"
puts str_array[-5]           #=> "This"