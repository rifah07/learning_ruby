puts 'hello'.capitalize
puts 'hello'.upcase
puts 'HELLO'.downcase

puts 'hello'.include?('lo')
puts 'hello'.include?('li')

puts 'hello'.empty?
puts ''.empty?

puts 'hello'.length

puts 'hello'.reverse

puts 'hello world'.split
puts 'hello'.split('')

puts ' hello, world   '.strip

puts 'he77o'.sub('7', 'l')
puts 'he77o'.tr('7', 'l')
puts 'hello world'.gsub('world', 'ruby')

puts 'hello'.insert(-1, ' dude')
puts 'hello world'.delete('l')

puts '!'.prepend('hello, ', 'world')
