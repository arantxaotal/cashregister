FactoryBot.define do
  factory :product_basket do
    product { create :product}
    basket { create :basket }

  end
end