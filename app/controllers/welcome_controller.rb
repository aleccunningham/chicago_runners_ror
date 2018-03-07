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
end
