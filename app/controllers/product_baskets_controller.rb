class ProductBasketsController < ApplicationController

  def product_basket_delete

    @product_basket = ProductBasket.find_by_id(params[:product_basket_id])
    @product_basket.basket.update(total_prize:BasketDomain.remove_product_amount(@product_basket))
    @product_basket.destroy
    redirect_to users_path
  end

end
