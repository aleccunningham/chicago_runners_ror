class StoreController < ApplicationController
  def shop
    @products = Product.all
  end

  def cart
  end

  def buy
    @prodid = params[:prodid].to_i;
    @qty = params[:qty].to_i;

    # Set session cart arrays to nil.
    session[:cart_prod] << @prodid
    session[:cart_qty] << @qty

    # Redirect to display cart (shopping cart)
    redirect_to cart_url
  end

  def updatecart
   	# Get the specific item that needs to be removed
  	cartid = params[:cartid].to_i;

  	 # Remove the specific element that is desired to be removed from the array.
  	session[:cart_prod].delete_at(cartid)
  	session[:cart_qty].delete_at(cartid)

    	# Redirect to display cart (shopping cart)
  	redirect_to cart_url
  end

  def checkout
    cartlen = session[:cart_prod].length
    i=0
    if cartlen > 0
     # Save new record in Order table
     # Student ID, Sale Date and Sale Notes
     orderid = Order.create(student_id: session[:customer_id], orderdate: Date.today, ordernotes:session[:cart_prod].to_s)

      # For each item in the shopping cart save the record in the in OrderItem table
      while i < cartlen
        # OrderItem.create(order_id: orderid.id, course_id: session[:cart_prod][i].to_i, saleprice: Tutor.find(session[:cart_prod][i].to_i).saleprice, prodqty: session[:cart_qty][i])
        i = i + 1
      end
    # Set session cart arrays to nil.
      session[:cart_prod] = Array.new
      session[:cart_qty] = Array.new
    end
  end

  def search
    @results=false

    if !params[:searchinput].nil?
      @results=true

      # 1.) Receive input entered by the end user
      @searchinput = params[:searchinput]

      # 2.) Add wildcard character to beginning and end of the input
      @searchcriteria="%" + @searchinput + "%"

      # 3.) Perform database lookup in coursename and description
      #     Compile results in an array to be displayed by search view

      # Example: Course.where("coursename LIKE ? OR description LIKE ?", "%Biology%", "%Biology%")

      @productlist = Product.where("productname like ? OR description like ?",@searchcriteria, @searchcriteria )
    end
  end
end
