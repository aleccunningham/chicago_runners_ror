  class WelcomeController < ApplicationController
  skip_before_action :authorize

  def index
    @promotions = Promotion.all # where("startdate <= ? AND enddate >= ?",  Date.today, Date.today)
  end

  def help
  end

  def privacy
  end

  def about
  end

  def contact
  end

  def search
    @results = 0
    @searchinput = params[:searchinput]
    @searchcriteria = "%#{params[:searchinput]}%"
    @productlist = Product.where("description like ?", @searchcriteria)
  end
end
