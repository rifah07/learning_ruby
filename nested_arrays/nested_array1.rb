math_scores = [
  [80, 77, 92],
  [68, 85, 79],
  [70, 93, 84]
]
print 'Array in original form (2D): '
p math_scores
print 'Array in flattened form (1D): '
p math_scores.flatten
# this is how we created nested array in Ruby

# another example
friends_names = [
  %w[Alice Bob Charlie],
  %w[David Eve Frank],
  %w[Grace Heidi Ivan]
]

print 'Array in original form (2D): '
p friends_names
print 'Array in flattened form (1D): '
p friends_names.flatten
puts "Single value : #{friends_names[0][0]}"
puts "Single value : #{friends_names[1][2]}"
puts "Single value : #{friends_names[1][1]}"
puts "Single value : #{friends_names[2][2]}"

# We can also use negative indices to return elements from the end of an array, starting at [-1].
puts "Single value (negative index) : #{friends_names[0][-1]}"
puts "Single value (negative index) : #{friends_names[1][-2]}"
puts "Single value (negative index) : #{friends_names[2][-1]}"

# From The Odin Project:
# If you try to access an index of a nonexistent nested element, it will raise an NoMethodError,
# because the nil class does not have a [] method. However, just like a regular array,
# if you try to access a nonexistent index inside of an existing nested element, it will return nil.

puts "Single value (nonexistent index) : #{friends_names[0][3]}" # nil
puts "Single value (nonexistent index) : #{friends_names[1][3]}" # nil
puts "Single value (nonexistent index) : #{friends_names[2][3]}" # nil
# puts "Single value (nonexistent index) : #{friends_names[3][0]}" # NoMethodError


# From The Odin Project:
# If you want a nil value returned when trying to access an index of a
# nonexistent nested element, you can use the #dig method.
puts "Index of nonexistent element : #{friends_names.dig(3, 0)}" # nil
