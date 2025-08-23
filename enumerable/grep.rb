# grep returns an array with those items that actually match the specified criteria (RegEx) (using a === match)

flowers = ["rose", "tulip", "daisy", "lily"]

matching_flowers = flowers.grep(/i/)
puts "Flowers that have 'i' in their name: #{matching_flowers.join(", ")}"