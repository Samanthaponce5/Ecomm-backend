class User < ApplicationRecord
    has_many :buyer_users, foreign_key: :buyer_id, class_name: 'Product'
    has_many :sellers, through: :buyer_users

    has_many :seller_users, foreign_key: :seller_id, class_name: 'Product'
    has_many :buyers, through: :seller_users
end
