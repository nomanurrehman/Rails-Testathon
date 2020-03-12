class Product < ApplicationRecord
  # Relationships
  has_and_belongs_to_many :orders

  # Validations
  validates_presence_of :name, :description, :price
end
