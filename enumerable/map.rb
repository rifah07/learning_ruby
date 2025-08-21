flowers = ["rose", "tulip", "daisy", "lily"]

plural_flowers = flowers.map { |flower| flower + "s" }
puts plural_flowers
# Output: ["roses", "tulips", "daisies", "lilys"]

puts ""

plants = ["rose bush", "oak tree", "grass patch", "flower bed"]

formatted_inventory = plants
  .map { |plant| plant.gsub(" ", "_") }  # Replace spaces with underscores
  .map.with_index { |plant, index| "#{index + 1}: #{plant.upcase}" }

puts formatted_inventory
# Output: ["1: ROSE_BUSH", "2: OAK_TREE", "3: GRASS_PATCH", "4: FLOWER_BED"]

