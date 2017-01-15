class User < ApplicationRecord
  belongs_to :role
  
  validates :username, presence: true
  validates :email, presence: true
end
