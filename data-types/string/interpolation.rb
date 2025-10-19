# Interpolation allows to evaluate a string that contains placeholder variables
# without "" / double quotes strings are not interpolated, and escape characters are not processed.

name = 'John'

puts "Hello #{name}" # String interpolation
puts 'Hello #{name}' # No interpolation, prints the string as is
