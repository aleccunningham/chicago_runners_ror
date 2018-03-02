class WelcomeController < ApplicationController
  def index
    def search
      @results=0
      if !params[:searchinput].nil?
      @results=1
      @searchinput = params[:searchinput]
      @searchcriteria="%#{params[:searchinput]}%"
      @courselist = Course.where("description like ?",@searchcriteria)
      end
    end
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
