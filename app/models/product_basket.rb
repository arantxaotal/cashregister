class ProductBasket < ApplicationRecord
  belongs_to :product
  belongs_to :basket
  validates_presence_of :product_id
  validates_presence_of :basket_id
end
