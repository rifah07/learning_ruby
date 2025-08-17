#isogram (a word that has no repeating letters) 
def isogram (word)
  len = word.length
  word_to_array = word.downcase.split("")
  len2 = word_to_array.uniq.length
  len == len2
end

puts "Isogram check for 'word': #{isogram('word')}" #=> true
puts "Isogram check for 'isogram': #{isogram('isogram')}" #=> true
puts "Isogram check for 'odin': #{isogram('odin')}" #=> true
puts "Isogram check for 'Sleep': #{isogram('Sleep')}" #=> false