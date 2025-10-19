numbers = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
planets = %w[mercury venus earth mars jupiter saturn uranus neptune]

puts "Actual numbers array: #{numbers.inspect}" #=> [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
puts "Actual planets array: #{planets.inspect}" #=> ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune"]

puts "Using sort method on numbers array #{numbers.sort.inspect}" #=> [1, 1, 2, 2, 3, 3, 4, 4, 5, 5]
puts "Using sort method on planets array #{planets.sort.inspect}" #=> ["earth", "jupiter", "mars", "mercury", "neptune", "saturn", "uranus", "venus"]
# The sort method alphabetically sorts the array elements.

puts "Using sort_by method on numbers array #{numbers.sort.inspect}" #=> [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
puts "Using sort_by method on planets array #{ #=> ["earth", "jupiter", "mars", "mercury", "neptune", "saturn", "uranus", "venus"]
planets.sort.inspect}"
puts "Using sort_by method with block on numbers array #{ #=> [5, 5, 4, 4, 3, 3, 2, 2, 1, 1]
numbers.sort_by do |n|
  -n
end.inspect}"
puts "Using sort_by method with block on planets array element length #{ #=> ["mars", "earth", "venus", "jupiter", "mercury", "neptune", "uranus", "saturn"]
planets.sort_by do |p|
  p.length
end.inspect}"
puts "Using reverse method on numbers array #{numbers.reverse.inspect}" #=> [5, 4, 3, 2, 1, 5, 4, 3, 2, 1]
puts "Using reverse method on planets array #{planets.reverse.inspect}" #=> ["neptune", "uranus", "saturn", "jupiter", "mars", "earth", "venus", "mercury"]
puts "Using reverse! method on numbers array #{numbers.reverse!.inspect}" #=> [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
puts "Using reverse! method on planets array #{planets.reverse!.inspect}" #=> ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune"]
# The reverse method returns a new array with all elements in a reverse order.

puts "Using shuffle method on numbers array #{numbers.shuffle.inspect}" #=> [3, 1, 5, 2, 4, 1, 2, 4, 5, 3]
puts "Using shuffle method on planets array #{planets.shuffle.inspect}" #=> ["venus", "neptune", "jupiter", "mars", "saturn", "uranus", "earth", "mercury"]
puts "Using shuffle! method on numbers array #{numbers.shuffle!.inspect}" #=> [2, 4, 5, 1, 3, 1, 2, 4, 5, 3]
puts "Using shuffle! method on planets array #{planets.shuffle!.inspect}" #=> ["mars", "neptune", "venus", "jupiter", "saturn", "uranus", "earth", "mercury"]
# The shuffle method randomly reorganizes the array elements.
