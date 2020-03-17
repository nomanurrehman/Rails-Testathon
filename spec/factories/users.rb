FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    date_of_birth { Faker::Date.birthday(min_age: 18, max_age: 50) }

    # Generating users with orders
    factory :user_with_orders do
      transient do
        orders_count { 10 }
      end

      after(:create) do |user, evaluator|
        create_list(:order, evaluator.orders_count, user: user)
      end
    end
  end
end
