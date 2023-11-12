require 'bcrypt'
FactoryBot.define do
  factory :user do
    transient do
      sequence :number do |n|
        n
      end
    end
    name { "name#{number}" }
    password { "12345678" }
    password_confirmation { "12345678" }


  end
end