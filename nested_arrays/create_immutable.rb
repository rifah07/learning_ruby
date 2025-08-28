mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
puts "The Mutable nested array: #{mutable}"
#=> [[1000, nil], [1000, nil], [1000, nil]]
