# E-commerce product catalogue

products = [
  {
    id: 1,
    name: 'MacBook Pro',
    price: 1299.99,
    category: 'electronics',
    stock: 15,
    rating: 4.8
  },
  {
    id: 2,
    name: 'Coffee Maker',
    price: 89.99,
    category: 'appliances',
    stock: 8,
    rating: 4.2
  },
  {
    id: 3,
    name: 'Samsung Galaxy Tab',
    price: 499.99,
    category: 'electronics',
    stock: 30,
    rating: 4.5
  }
]

# Find products under $100
affordable_products = products.select { |product| product[:price] < 100 }

# Calculate total inventory value
total_value = products.sum { |product| product[:price] * product[:stock] }

puts 'Affordable products under $100: '
p affordable_products
puts 'Names of affordable products: '
p(affordable_products.map { |product| product[:name] })

puts "Total inventory value: $#{total_value}"
