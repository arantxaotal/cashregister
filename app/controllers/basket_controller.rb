class BasketController < ApplicationController

  def edit
    @basket = Basket.find(params[:id])
    if params[:amount].to_i > 0
      product_basket = ProductBasket.find_or_create_by(basket_id:@basket.id,product_id:params[:product_id])
      BasketDomain.calculate_total_prize(product_basket,params[:amount].to_i)
    end
    redirect_to users_path
  end
end
