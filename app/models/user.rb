class User < ApplicationRecord
  # Relationships
  has_many :orders

  # Validations
  validates_presence_of :first_name, :last_name, :date_of_birth
end
