require 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of( :name ) }
  it { should validate_uniqueness_of( :name ).case_insensitive }
  it { should have_secure_password :password }
end
