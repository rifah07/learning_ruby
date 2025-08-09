shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}
print "The shoe for summer: "
puts shoes.fetch("summer")
print "The shoe for hiking: "
puts shoes.fetch("hiking", "hiking boots") # use fetch with default

# add values
shoes["fall"] = "sneakers"
print "Shoe for fall: "
puts shoes["fall"]

print "Shoes hash now: "
p shoes

# remove data

shoes.delete("winter")
print "Shoes hash after removing winter: "
p shoes
p shoes["winter"]

# update data
shoes["fall"] = "boots"
print "Shoe for fall after update: "
puts shoes["fall"]
print "Shoes hash after update: "
p shoes
