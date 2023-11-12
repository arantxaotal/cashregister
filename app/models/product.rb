class Product < ApplicationRecord
  validates_uniqueness_of :product_code
  validates_presence_of :name
  validates_presence_of :product_code
end
