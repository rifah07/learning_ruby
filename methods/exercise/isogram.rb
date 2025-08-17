#isogram (a word that has no repeating letters) 

=begin def isogram? (word)
  len = word.length
  word_to_array = word.downcase.split("")
  len2 = word_to_array.uniq.length
  len == len2
end

puts "Isogram check for 'word': #{isogram?('word')}" #=> true
puts "Isogram check for 'isogram': #{isogram?('isogram')}" #=> true
puts "Isogram check for 'odin': #{isogram?('odin')}" #=> true
puts "Isogram check for 'Sleep': #{isogram?('Sleep')}" #=> false
=end

# use pry to debug
# install pry-debug: gem install pry-byebug
# use it at the 1st line of code: require 'pry-byebug'
# to use Pry-byebug, you just need to call binding.pry at any point in your program.
# run it in terminal to see clearly and debug

require 'pry-byebug'

def isogram? (word)
  len = word.length
  word_to_array = word.downcase.split
  len2 = word_to_array.uniq.length
  len == len2

  binding.pry
end

puts "Isogram check for 'word': #{isogram?('word')}" #=> true
=begin puts "Isogram check for 'isogram': #{isogram?('isogram')}" #=> true
puts "Isogram check for 'odin': #{isogram?('odin')}" #=> true
puts "Isogram check for 'Sleep': #{isogram?('Sleep')}" #=> false
=end
