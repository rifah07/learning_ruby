A = [1, 2, 3, 4, 5, 5, 6]
B = [5, 6, 6, 7, 8, 9, 10]

union = A | B
intersect = A & B
diff1 = A - B
diff2 = B - A
symmetric_diff = (A - B) | (B - A)

puts "Union of A and B: #{union.inspect}" #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "Intersection of A and B: #{intersect.inspect}" #=> []
puts "Difference A - B: #{diff1.inspect}"  #=> [1, 2, 3, 4, 5]
puts "Difference B - A: #{diff2.inspect}"  #=> [6, 7, 8, 9, 10]
puts "Symmetric Difference of A and B: #{symmetric_diff.inspect}" #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
