# Given a hash of family members, with keys as the title and an array of names as the values,
# use Ruby's built-in select method to gather only siblings' names into a new array.

family = {  uncles: %w[bob joe steve],
            sisters: %w[jane jill beth],
            brothers: %w[frank rob david],
            aunts: %w[mary sally susan] }

siblings = family.select { |relation, _names| %i[sisters brothers].include?(relation) }
siblings_names = siblings.values.flatten # flatten is used to convert a nested array structure into a single-level array.
puts 'Full siblings list:'
p siblings
puts 'Siblings names:'
p siblings_names

# flatten is used to convert a nested array structure into a single-level array.
# Without flatten, you'd have:
# [["jane", "jill", "beth"], ["frank", "rob", "david"]]
# With flatten you have
# ["jane", "jill", "beth", "frank", "rob", "david"]
