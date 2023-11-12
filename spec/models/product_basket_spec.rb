require 'rails_helper'

RSpec.describe ProductBasket, type: :model do

  it { should validate_presence_of :product_id }
  it { should validate_presence_of :basket_id }
  it { should belong_to :product }
  it { should belong_to :basket }
end
