class User < ApplicationRecord
  has_secure_password :password, validations: true
  validates_uniqueness_of :name
  validates_presence_of :name
  as_enum :role, { client: 0, admin: 1}

end
