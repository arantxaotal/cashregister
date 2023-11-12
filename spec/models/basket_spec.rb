require 'rails_helper'

RSpec.describe Basket, type: :model do

  it { should validate_presence_of :user_id }
  it { should belong_to :user }
  it { should have_many :product_baskets }


end
