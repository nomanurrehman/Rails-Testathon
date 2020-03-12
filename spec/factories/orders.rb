FactoryBot.define do
  factory :order do
    due_date { Faker::Date.forward(days: 30)  }
  end
end
