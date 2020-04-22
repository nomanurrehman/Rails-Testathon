FactoryBot.define do
  factory :order do
    due_date { Faker::Date.forward(days: 30)  }
    user
    association :products, factory: :product

    # Generating orders with products
    # factory :order_with_products do
    #   transient do
    #     products_count { 10 }
    #   end

    #   after(:create) do |order, evaluator|
    #     create_list(:product, evaluator.products_count, orders: [order])
    #   end
    # end

    # Generating orders with products
    # factory :order_with_products do
    #   transient do
    #     products_count { 10 }
    #   end

    #   after(:create) do |order, evaluator|
    #     create_list(:product, evaluator.products_count, orders: [order])
    #   end
    # end
  end
end
