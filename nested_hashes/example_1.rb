vehicles = {
  alice: { year: 2019, make: 'Toyota', model: 'Corolla' },
  blake: { year: 2020, make: 'Volkswagen', model: 'Beetle' },
  caleb: { year: 2020, make: 'Honda', model: 'Accord' }
}
puts vehicles[:alice][:year]
#=> 2019
puts vehicles[:blake][:make]
#=> "Volkswagen"
puts vehicles[:caleb][:model]
#=> "Accord"

# puts vehicles[:zoe][:year]
#=> NoMethodError
puts vehicles.dig(:zoe, :year)
#=> nil
puts vehicles[:alice][:color]
#=> nil
puts vehicles.dig(:alice, :color)
#=> nil
