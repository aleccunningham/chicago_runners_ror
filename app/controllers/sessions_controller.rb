class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
  end

  def create
    customer = Customer.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if customer && customer.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      session[:customer_id] = customer.id
      redirect_to '/'
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  def destroy
    # resets session id to nil
    session[:customer_id] = nil

	# Initialize new arrays for product and quantity.
	session[:cart_products] = Array.new
	session[:cart_count] = Array.new

    redirect_to login_url, :notice => "Logged out!"

  end
end
