require 'rails_helper'

RSpec.describe Product, type: :model do

  it { should validate_presence_of :product_code }
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of( :product_code ).case_insensitive }
end
