zero = 0
puts 'Before each call'
begin
  zero.each { |element| puts element }
rescue StandardError
  puts "Can't do that!"
end
puts 'After each call'

# It does so because it isn't possible to call the each method on an Integer which is the value of the zero variable.
