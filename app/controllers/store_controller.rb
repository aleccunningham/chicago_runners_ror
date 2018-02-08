class StoreController < ApplicationController
  def shop
    @products = Product.all
  end
end
