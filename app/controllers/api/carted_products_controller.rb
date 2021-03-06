class Api::CartedProductsController < ApplicationController
  
  def index
    @carted_products = current_user.carted_products
    render 'index.json.jb'
  end

  def create
    @carted_product = CartedProduct.new(
                                        user_id: current_user.id,
                                        product_id: params[:product_id],
                                        quantity: params[:quantity],
                                        status: "Carted"
                                        )
    if @carted_product.save
      render 'show.json.jb'
    end 
  end
end

