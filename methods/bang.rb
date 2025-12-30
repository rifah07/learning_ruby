whisper = "HELLO EVERYBODY"

puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"

# bang method
puts whisper.downcase! #=> "hello everybody"
puts whisper #=> "hello everybody"

# 1. Bang methods end with ! and are Ruby's way of saying "danger ahead - this might break things."
#
# 2. They usually destroy or permanently modify the original object instead of making a copy.
#
# 3. If there's nothing to change, they often return nil instead of what you might expect.
#
# 4. The exclamation mark is like a warning label - it makes risky operations visually obvious in your code.
#
# 5. Most experienced Ruby developers avoid them unless they absolutely need the performance boost.
#
# 6. Think of it as the difference between borrowing someone's car and returning
# it clean versus borrowing it and spray-painting it - the bang method is the spray paint version.
#
