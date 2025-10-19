require 'pp'
# Counting favorite programming languages from survey responses
response_languages = %w[Python JavaScript Ruby Python JavaScript Python Go]
puts 'Programming Language Vote Results:'
language_counts = response_languages.each_with_object(Hash.new(0)) do |language, acc|
  acc[language] += 1
end

pp language_counts
p

# print another way
puts 'Programming Language Vote Results (using rjust):'
puts '-' * 25
language_counts.each do |language, count|
  puts "#{count.to_s.rjust(2)} - #{language}"
end

# rjust adds padding i.e. string.rjust(width, padding_character)
# width: The total number of characters you want the final string to have (required)
# padding_character: What character to use for padding (optional, defaults to space)
# Single digits get padded with a space, double digits stay the same when width = 2

# print another way
puts 'Programming Language Vote Results (using rjust wth *):'
puts '-' * 25
language_counts.each do |language, count|
  puts "#{count.to_s.rjust(2, '#')} - #{language}"
end
