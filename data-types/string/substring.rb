subs1 = 'hello'[0]
subs2 = 'hello'[0..1]
subs3 = 'hello'[0, 4]
subs4 = 'hello'[-1]
subs5 = 'hello'[-2..-1]

puts "The first character of 'hello' is: #{subs1}"
puts "The first two characters of 'hello' are: #{subs2}"
puts "The first four characters of 'hello' are: #{subs3}"
puts "The last character of 'hello' is: #{subs4}"
puts "The last two characters of 'hello' are: #{subs5}"
