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