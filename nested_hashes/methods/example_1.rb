vehicles = {
  alice: { year: 2019, make: 'Toyota', model: 'Corolla' },
  blake: { year: 2020, make: 'Volkswagen', model: 'Beetle' },
  caleb: { year: 2021, make: 'Honda', model: 'Accord' }
}

vehicles_filtered = vehicles.select { |name, data| data[:year] >= 2020 }

pp vehicles_filtered
