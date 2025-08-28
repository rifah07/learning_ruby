english_scores = [
  [80, 77, 92],
  [68, 85, 79],
  [70, 93, 84]
]
print "Array in original form (2D): "
p english_scores
=begin print "Array in flattened form (1D): "
p english_scores.flatten
=end


# Add element
english_scores << [75, 80, 85]
print "Array after adding a new row (2D): "
p english_scores
=begin print "Array after adding a new row (flattened 1D): "
p english_scores.flatten
=end
