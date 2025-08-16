# method name: #ascii_translator
# parameter: number (an integer)
# return value: the number's ASCII character (https://www.ascii-code.com/)
# hint: use Integer#chr

def ascii_translator(number)
  if number.between?(0, 127)
    return number.chr
  else
    "Invalid ASCII code: #{number}"
  end
end

puts ascii_translator(65)
puts ascii_translator(128)


# method name: #common_sports
# parameters: current_sports and favorite_sports (both arrays)
# return value: an array containing items in both arrays
# hint: use Array#intersection

def common_sports (current_sports, favorite_sports)
  current_sports.intersection(favorite_sports)
end
print "Common sport(s) is/are: "
puts common_sports(["soccer", "basketball", "tennis"], ["tennis", "baseball"])