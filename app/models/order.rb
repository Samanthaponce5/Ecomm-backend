class Order < ApplicationRecord
    has_many :products
    has_many :users, through: :products
    has_one :payment
end
