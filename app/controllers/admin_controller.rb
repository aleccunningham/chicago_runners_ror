class AdminController < ApplicationController
  def dashboard
    @products = Product.all
  end
end
