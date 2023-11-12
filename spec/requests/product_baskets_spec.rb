require 'rails_helper'

RSpec.describe ProductBasketsController, type: :request do
  let( :product_basket) { create :product_basket}
  it "product_basket_delete" do
    total = product_basket.basket.total_prize
    expect(product_basket.basket.update(total_prize:BasketDomain.remove_product_amount(product_basket))).to eq true
    expect(product_basket.basket.total_prize).to eq total -(product_basket.amount*product_basket.product.prize)
    expect(product_basket.destroy).to eq product_basket
  end

end
