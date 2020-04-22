FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.paragraph(sentence_count: 2) }
    price { Faker::Commerce.price(range: 1.00..99999.99) }
    # orders
    
  end
end
