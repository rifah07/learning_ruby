# Ruby also allows the use of negative indices,
# which return elements starting from the end of an array, starting at [-1]
str_array = %w[This is a small array]
puts 'The first approach to access elements in an array is using indices.'
puts str_array[0]            #=> "This"
puts str_array[1]            #=> "is"
puts str_array[4]            #=> "array"
puts str_array[-1]           #=> "array"
puts str_array[-2]           #=> "small"
puts str_array[-5]           #=> "This"

# there is another approach
str_array = %w[This is a small array]
puts 'The second approach to access elements in an array is using methods.'
puts str_array.first         #=> "This"
puts str_array.first(2)      #=> ["This", "is"]
puts str_array.last(2)       #=> ["small", "array"]
puts str_array.take(2)      #=> ["This", "is"]
puts str_array.drop(2)      #=> ["a", "small", "array"]
