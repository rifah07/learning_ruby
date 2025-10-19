# The #detect method (also implemented as #find) is similar to #select,
# but instead of returning a collection of objects that match the given criteria,
# it will “detect” the first matching element it finds and return only that object.
#   - https://www.codementor.io/ruby-on-rails/tutorial/rubys-swiss-army-knife-the-enumerable-module

numbers = [1, 2, 3, 4, 5]

result = numbers.detect { |num| num.even? }
puts "First even number in the array is: #{result}"

# another example
result1 = (1..10).detect { |n| n.between?(3, 7) }
puts "First number between 3 and 7 is: #{result1}"

# another example
names = %w[John Alice Shubman Bob]
result2 = names.detect { |name| name.length > 5 }
puts "First name longer than 5 characters is: #{result2}"

# example with hash
cities = { 'New York' => 30_000, 'Tokyo' => 40_000, 'Paris' => 20_000 }
result3 = cities.detect { |_city, population| population > 25_000 }
puts "First city and population quantity with a population over 25000 is: #{result3}"
