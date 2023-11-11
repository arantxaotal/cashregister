module BasketDomain
  module_function

  def calculate_total_prize(product_basket)
    total_prize = product_basket.basket.total_prize + (product_basket.amount * product_basket.product.prize)
    product_basket.basket.update(total_prize:total_prize)
  end

  def amount_prize(product_basket)
    product_basket.amount * product_basket.product.prize
  end
end