# Regex stands for regular expression. A regular expression is a sequence
# of characters that form pattern matching rules, and is then applied to a string to look for matches.

# Example: Check if the pattern "ss" appears in the string "Mississippi".

# Creating regular expressions starts with the forward slash character (/).
# Inside two forward slashes you can place any characters you would like to match with the string.

# Use the =~ operator to see if we have a match in our regular expression.
# Let's say we are looking for the letter "b" in a string "powerball".

powerball = 'powerball'
p powerball =~ /b/
# This will return the index of the first match, or nil if no match is found.
# In this case, it will return 1, since "b" is at index 1 in "powerball".

# The order of the string and regex don't usually matter when using =~. Thus, we can also write the above as:
p(/b/ =~ powerball)
