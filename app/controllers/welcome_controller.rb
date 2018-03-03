  class WelcomeController < ApplicationController
  skip_before_action :authorize

  def index
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
