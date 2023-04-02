class User < ApplicationRecord
    has_secure_password
  
    validates :user_name, length: {minimum: 5, maximum: 20}, uniqueness: true, presence: true
    validates :email, uniqueness: true, presence: true
  end
  
