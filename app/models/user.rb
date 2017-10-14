class User < ApplicationRecord
  has_many :palates
  has_many :notes
  has_secure_password
  validates :username, uniqueness: true
end
