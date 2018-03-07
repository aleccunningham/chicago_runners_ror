class Product < ApplicationRecord
  # Each product could have one or
  # more reviews, dependent on the product
  #has_many :feedback, dependent: :destroy
end
