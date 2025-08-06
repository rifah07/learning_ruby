numbers = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
planets = %w{mercury venus earth mars jupiter saturn uranus neptune}

puts "Actual numbers array: #{numbers.inspect}" #=> [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
puts "Actual planets array: #{planets.inspect}" #=> ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune"]

puts "Using sort method on numbers array #{numbers.sort.inspect}" #=> [1, 1, 2, 2, 3, 3, 4, 4, 5, 5]
puts "Using sort method on planets array #{planets.sort.inspect}" #=> ["earth", "jupiter", "mars", "mercury", "neptune", "saturn", "uranus", "venus"]

puts "Using sort_by method on numbers array #{numbers.sort_by {|n| n}.inspect}" #=> [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
puts "Using sort_by method on planets array #{planets.sort_by {|p| p}.inspect}" #=> ["earth", "jupiter", "mars", "mercury", "neptune", "saturn", "uranus", "venus"]
puts "Using sort_by method with block on numbers array #{numbers.sort_by {|n| -n}.inspect}" #=> [5, 5, 4, 4, 3, 3, 2, 2, 1, 1]
puts "Using sort_by method with block on planets array element length #{planets.sort_by {|p| p.length}.inspect}" #=> ["mars", "earth", "venus", "jupiter", "mercury", "neptune", "uranus", "saturn"]

puts "Using reverse method on numbers array #{numbers.reverse.inspect}" #=> [5, 4, 3, 2, 1, 5, 4, 3, 2, 1]
puts "Using reverse method on planets array #{planets.reverse.inspect}" #=> ["neptune", "uranus", "saturn", "jupiter", "mars", "earth", "venus", "mercury"]
puts "Using reverse! method on numbers array #{numbers.reverse!.inspect}" #=> [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
puts "Using reverse! method on planets array #{planets.reverse!.inspect}" #=> ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune"]

puts "Using uniq method on numbers array #{numbers.uniq.inspect}" #=> [1, 2, 3, 4, 5]
puts "Using uniq method on planets array #{planets.uniq.inspect}" #=> ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune"]
puts "Using uniq! method on numbers array #{numbers.uniq!.inspect}" #=> [1, 2, 3, 4, 5]
puts "Using uniq! method on planets array #{planets.uniq!.inspect}" #=> ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune"]

puts "Using shuffle method on numbers array #{numbers.shuffle.inspect}" #=> [3, 1, 5, 2, 4, 1, 2, 4, 5, 3]
puts "Using shuffle method on planets array #{planets.shuffle.inspect}" #=> ["venus", "neptune", "jupiter", "mars", "saturn", "uranus", "earth", "mercury"]
puts "Using shuffle! method on numbers array #{numbers.shuffle!.inspect}" #=> [2, 4, 5, 1, 3, 1, 2, 4, 5, 3]
puts "Using shuffle! method on planets array #{planets.shuffle!.inspect}" #=> ["mars", "neptune", "venus", "jupiter", "saturn", "uranus", "earth", "mercury"]