class OrdersController < ApplicationController  
  def index
    @orders = Order.all
  end
  def create

    @order = Order.new(params[:order])

    @order.add_line_items_from_cart(current_cart)

 

    respond_to do |format|

      if @order.save

        Cart.destroy(session[:cart_id])

        session[:cart_id] = nil

        OrderNotifier.received(@order).deliver

        format.html { redirect_to store_url, notice: 

          'Thank you for your order.' }

        format.json { render json: @order, status: :created,

          location: @order }

      else

        @cart = current_cart

        format.html { render action: "new" }

        format.json { render json: @order.errors,

          status: :unprocessable_entity }

      end

    end
  end
  def new 
    @order = Order.new
  end
end
