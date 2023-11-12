require 'rails_helper'

RSpec.describe BasketController, type: :request do
  before do
    @basket = create :basket
    @product = create :product
  end
  it "edit" do
    product_basket = ProductBasket.find_or_create_by(basket_id:@basket.id,product_id:@product.id)
    expect( BasketDomain.calculate_total_prize(product_basket,12) ).to eq true
    expect( product_basket.basket.total_prize ).to eq 24
    expect( product_basket.amount ).to eq 12
  end
end
