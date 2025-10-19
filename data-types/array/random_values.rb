arr = %w[a b c d e f g h i j]
# In Ruby, %w{} is a word array literal that creates an array of strings. The w stands for "words".

puts arr.sample
puts arr.sample(3).inspect
# The sample method comes in two forms. In the first form, we select a random element.
# In the second form, we select n random elements from the array.
