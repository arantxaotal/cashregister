class Basket < ApplicationRecord
  belongs_to :user
  has_many :product_baskets
  validates_uniqueness_of :user_id
  validates_presence_of :user_id

end
