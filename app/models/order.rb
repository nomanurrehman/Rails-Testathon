class Order < ApplicationRecord
  # Relationships
  has_and_belongs_to_many :products
end
