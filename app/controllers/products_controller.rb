class ProductsController < ApplicationController
  def create
    Product.create(name:params[:product][:name],prize:params[:product][:prize],product_code:ProductDomain.generate_product_code(params[:product][:name]))
    redirect_to users_path
  end
end
