FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    date_of_birth { Faker::Date.birthday(min_age: 18, max_age: 50) }

    # For a user with orders and products
    factory :user_with_orders_and_products do
      
      transient do
        orders_count { 10 }
        products_count { 10 }
      end

      after(:create) do |user, evaluator|
        1.upto(evaluator.orders_count) do |n|
          products = create_list(:product, evaluator.products_count)
          create(:order, user: user, products: products)
        end
      end
      
    end
  end
end
