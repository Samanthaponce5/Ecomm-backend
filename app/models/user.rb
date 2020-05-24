class User < ApplicationRecord
    has_many :products
    has_many :orders
    has_many :bought_products, through: :orders, :source => :product


    has_one_attached :avatar

end
