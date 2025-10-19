# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys.
# Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

family = {  uncles: %w[bob joe steve],
            sisters: %w[jane jill beth],
            brothers: %w[frank rob david],
            aunts: %w[mary sally susan] }

family.each_key { |key| puts key }
family.each_value { |value| puts value }
family.each { |key, value| puts "#{key}: #{value}" }
