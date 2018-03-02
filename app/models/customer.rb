class Customer < ApplicationRecord
  has_and_belongs_to_many :products
  has_secure_password
end
