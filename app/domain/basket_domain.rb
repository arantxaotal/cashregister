module BasketDomain
  module_function

  def calculate_total_prize(product_basket, amount)
    product_basket.update(amount:product_basket.amount+amount) if amount
    total_prize = product_basket.basket.total_prize + (amount * product_basket.product.prize) if amount
    product_basket.basket.update(total_prize:total_prize) if total_prize
  end

  def amount_prize(product_basket)
    product_basket.amount * product_basket.product.prize if product_basket.amount
  end

  def remove_product_amount(product_basket)
    product_basket.basket.total_prize-(product_basket.amount*product_basket.product.prize)
  end
end