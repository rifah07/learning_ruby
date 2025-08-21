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

# another example

menu_items = ["grilled chicken", "baked potato", "fresh salad", "fruit juice"]

# Remove specific words and add prefix
prepared_menu = menu_items.map do |item|
  cleaned_item = item.gsub(/grilled|baked|fresh/, "special")
  "Today's #{cleaned_item}"
end
puts ""
puts prepared_menu
# Output: ["Today's special chicken", "Today's special potato", "Today's special salad", "Today's fruit juice"]


