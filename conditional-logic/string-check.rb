# exercise : Write a method that takes a string as an argument. The method should return 
# a new, all-caps version of the string, only if the string is longer than 10 characters.
 #Example: change "hello world" to "HELLO WORLD".
 
def check(b)
  if b.length > 10
    b.upcase
  else b
  end
end

a= gets.chomp
puts check(a)