# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

print "American cars('rocket' syntax): "
p american_cars
print "Japanese cars('symbols' syntax): "
p japanese_cars

# regardless of which of the above two syntax options you use when creating a hash,
# they both create symbol keys that are accessed the same way

puts "Accessing values by symbol keys: "
print "American cars: "
p american_cars[:chevrolet] #=> "Corvette"
print "Japanese cars: "
p japanese_cars[:honda]   #=> "Accord"
