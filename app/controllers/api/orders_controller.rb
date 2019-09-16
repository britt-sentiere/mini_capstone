class Api::OrdersController < ApplicationController
  before_action :authenticate_user, only: [:index, :create]

  def index
    if current_user
      @orders = current_user.orders 
      render 'index.json.jb'
    else 
      render json: [], status: :unauthorized
    end
  end 


  def create
   
      product = Product.find(params[:product_id])
      quantity = params[:quantity].to_i

      subtotal = product.price * quantity
      tax = subtotal * 0.09
      total = tax + subtotal

        @order = Order.new(
                          user_id: current_user.id,
                          product_id: params[:product_id],
                          quantity: params[:quantity],
                          subtotal: product.price * quantity,
                          tax: tax,
                          total: total
                        )
       if @order.save
          render 'show.json.jb'
      else
          render json: {errors: order.errors.full_messages}, status: :unprocessible_entity 
      end 
  end


def show
  @order = Order.find(params[:id])
  render 'show.json.jb'
end

end
