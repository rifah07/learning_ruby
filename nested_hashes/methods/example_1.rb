vehicles = {
  alice: { year: 2019, make: 'Toyota', model: 'Corolla' },
  blake: { year: 2020, make: 'Volkswagen', model: 'Beetle' },
  caleb: { year: 2021, make: 'Honda', model: 'Accord' }
}

vehicles_filtered = vehicles.select { |name, data| data[:year] >= 2020 }

pp vehicles_filtered

vehicles_filtered_1 = vehicles.collect { |name, data| name if data[:year] >= 2020 }
print 'Names: '
pp vehicles_filtered_1

# collect and map have the same functionality.
# Both of these methods use the return value of each iteration,
# so when the if statement is false, it will return a nil value.

vehicles_filtered_2 = vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact
print 'After using compact: '
pp vehicles_filtered_2
# compact method returns an array (or hash) without nil values
