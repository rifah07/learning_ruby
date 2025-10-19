english_scores = [
  [80, 77, 92],
  [68, 85, 79],
  [70, 93, 84]
]
print 'Array in original form (2D): '
p english_scores
# print "Array in flattened form (1D): "
# p english_scores.flatten


# Add element
english_scores << [75, 80, 85]
print 'Array after adding a new row (2D): '
p english_scores
# print "Array after adding a new row (flattened 1D): "
# p english_scores.flatten

# another way to add element (in specific index)
english_scores[0].push(100)
print 'Array after adding a new element via push (2D): '
p english_scores

# remove element
english_scores.pop
puts 'Array after removing the last row (2D): '
p english_scores

english_scores[0].pop
puts 'Array after removing the last element from the first row (2D): '
p english_scores
