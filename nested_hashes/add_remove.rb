vehicles = {
  alice: { year: 2019, make: 'Toyota', model: 'Corolla' },
  blake: { year: 2020, make: 'Volkswagen', model: 'Beetle' },
  caleb: { year: 2020, make: 'Honda', model: 'Accord' }
}
puts 'The hash vehicle'
pp vehicles
print 'Year of Alice: '
puts vehicles[:alice][:year]
print 'Year of Zoe: '
puts vehicles.dig(:zoe, :year) # nil

# add new data:
vehicles[:zoe] = { year: 2021, make: 'Ford', model: 'Escape' }

puts 'After adding data'
pp vehicles
print 'Year of Zoe: '
puts vehicles.dig(:zoe, :year)

# add more specificly
vehicles[:zoe][:color] = 'red'
puts 'After adding color in Zoe'
pp vehicles
print 'Color of Zoe-s vehicle: '
puts vehicles.dig(:zoe, :color)
