# Write a program that checks if the sequence of characters "lab" exists in strings.
# If it does exist, print out the word.

def contains_lab?(string)
  return unless /lab/.match?(string)

  puts string
end

contains_lab?('laboratory')
contains_lab?('experiment')
contains_lab?('Pans Labyrinth')
contains_lab?('elaborate')
contains_lab?('polar bear')
