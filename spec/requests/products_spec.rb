require 'rails_helper'

RSpec.describe ProductsController, type: :request do
  it "create" do
    product = Product.new(name:"name",prize:23,product_code:ProductDomain.generate_product_code("name"))
    expect(product.save). to eq true
  end
end
