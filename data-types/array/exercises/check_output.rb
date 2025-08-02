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

# 3rd exercise
# how can you print 'example'
arr = [["test", "hello", "world"],["example", "mem"]]
puts arr.last.first
puts "Index of 'example': #{arr[1].index("example")}" # arr[1][0] is "example"

# 4th exercise
arr = [15, 7, 18, 5, 12, 8, 5, 1]
puts "Original array: #{arr}"
puts "See the outputs below"
puts arr.index(5)
puts arr[5]
puts arr.index[5]