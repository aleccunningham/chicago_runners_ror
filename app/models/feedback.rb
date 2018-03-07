class Feedback < ApplicationRecord
  # Each feedback belongs to a customer
  belongs_to :customer

  # Each feedback belongs to a specific product
  belongs_to :product 
end
