# Ruby includes certain built-in methods that end with a question mark (?),
# like even?, odd?, or between?. This naming pattern identifies predicate methods
# - a Ruby convention used to indicate methods that return Boolean values (true or false).

puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15) #=> true
