# array literal-> []
# array methods: .each, .map, .select, .reject, .find, .include?, .sort, .reverse, .join
# array indexing: array[index], array[start_index..end_index]
# array length: array.length or array.size
# nested arrays: array_of_arrays = [[1, 2], [3, 4]]
# multidimensional arrays: matrix-like structures
# array destructuring: a, b = [1, 2]
# array concatenation: array1 + array2
# array slicing: array[start_index, length]
# array comparison: ==, !=, <=> (spaceship operator)

# Create an array
# here used 2 optional arguments (initial size and default value):
puts Array.new               #=> []
puts Array.new(3)            #=> [nil, nil, nil]
puts Array.new(3, 7)         #=> [7, 7, 7]
puts Array.new(3, true)      #=> [true, true, true]