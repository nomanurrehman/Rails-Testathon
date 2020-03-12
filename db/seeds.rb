# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create user
user = User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 50)
)

# Create products
products = []
0.upto(5) do
  products << Product.create(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price: Faker::Commerce.price(range: 1.00..99999.99)
  )      
end

# Create order
order = user.orders.new(
  due_date: Faker::Date.forward(days: 30)
)
order.products << products
order.save
