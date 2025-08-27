math_scores = [
  [80, 77, 92],
  [68, 85, 79],
  [70, 93, 84]
]
print "Array in original form (2D): "
p math_scores
print "Array in flattened form (1D): "
p math_scores.flatten
# this is how we created nested array in Ruby

# another example
friends_names = [
  ["Alice", "Bob", "Charlie"],
  ["David", "Eve", "Frank"],
  ["Grace", "Heidi", "Ivan"]
]

print "Array in original form (2D): "
p friends_names
print "Array in flattened form (1D): "
p friends_names.flatten
puts "Single value : #{friends_names[0][0]}"
puts "Single value : #{friends_names[1][2]}"
puts "Single value : #{friends_names[1][1]}"
puts "Single value : #{friends_names[2][2]}"