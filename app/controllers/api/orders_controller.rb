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
    # carted_products.where(current_user :id carted_products :status)
    # subtotal = Product.find_by(:id).price * quantity

        @order = Order.new(
                          user_id: current_user.id,
                          subtotal: 
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
