# Write a program that checks if the sequence of characters "lab" exists some strings. If it does exist, print out the word.

def check_substring(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match found"
  end
end

check_substring("laboratory")
check_substring("experiment")
check_substring("Pans Labyrinth")
check_substring("elaborate")
check_substring("polar bear")