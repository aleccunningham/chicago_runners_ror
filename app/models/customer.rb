class Customer < ApplicationRecord
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :username, presence:true, uniqueness:true
  has_secure_password

  # Each customer could have one or more carts
  has_many :cart, dependent: :destroy
end
