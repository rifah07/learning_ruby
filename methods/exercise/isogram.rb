def isogram (word)
  len = word.length
  word_to_array = word.downcase.split
  len2 = word_to_array.uniq.length
  len == len2
end

puts "Isogram check for 'word': #{isogram('word')}" #=> false
puts "Isogram check for 'isogram': #{isogram('isogram')}" #=> false
puts "Isogram check for 'odin': #{isogram('odin')}" #=> false
puts "Isogram check for 'Sleep': #{isogram('Sleep')}" #=> false