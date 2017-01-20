class User < ApplicationRecord
  belongs_to :role
  
  has_secure_password
  
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
end
