mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
puts "The Mutable nested array: #{mutable}"
#=> [[1000, nil], [1000, nil], [1000, nil]]

immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
puts "The Immutable nested array: #{immutable}"
immutable[0][0] = 1000
#=> 1000
puts "The updated Immutable nested array: #{immutable}"
#=> [[1000, nil], [nil, nil], [nil, nil]]
# see the example, Changing the value of the first element in the first nested array
# does not cause the value to change in any other nested array.