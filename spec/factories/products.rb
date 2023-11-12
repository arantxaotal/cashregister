FactoryBot.define do
  factory :product do
    transient do
      sequence :number do |n|
        n
      end
    end
    name { "name#{number}" }
    product_code { "product_code#{number}" }
    prize { 2}

  end
end