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