# first exercise
arr = ["b", "a"]
puts "Main array: #{arr}"
arr = arr.product(Array(1..3))
puts "Array after product: #{arr}"

arr.first.delete(arr.first.last)
puts "Array after deleting last element of first sub-array: #{arr}"

# second exercise
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
puts "Array after product with nested array: #{arr}"
arr.first.delete(arr.first.last)
puts "Array after deleting last element of first sub-array: #{arr}"
