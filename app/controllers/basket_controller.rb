class BasketController < ApplicationController

  def edit
    @basket = Basket.find(params[:id])
    product_basket = ProductBasket.find_or_create_by(basket_id:@basket.id,product_id:params[:product_id])
    BasketDomain.calculate_total_prize(product_basket,params[:amount].to_i)
    redirect_to users_path
  end
end
