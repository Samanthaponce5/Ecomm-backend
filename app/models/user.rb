class User < ApplicationRecord
    has_many :products
    has_many :orders
    has_many :bought_products, through: :orders, :source => :product


 
    has_secure_password
    validates :username, presence: true, uniqueness: true
end
