animals = [
  ['mammals', ['dog', 'cat', 'elephant', 'whale']],
  ['birds', ['eagle', 'sparrow', 'penguin']],
  ['reptiles', ['snake', 'lizard', ['turtle', 'tortoise']]]
]

p animals

animals.each do |category, names|
  puts "Category: #{category}"
  names.each do |name|
    if name.is_a?(Array)
      name.each { |sub_name| puts "  Sub-name: #{sub_name}" }
    else
      puts "  Name: #{name}"
    end
  end
end


#another example
test_scores = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 85, 97, 81]]
puts "Test Scores: #{test_scores}"
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 85, 97, 81]]

result = test_scores.any? do |scores|
  scores.all? { |score| score > 80 }
end

puts "Any student scored above 80 in all tests? #{result}"
#=> false
