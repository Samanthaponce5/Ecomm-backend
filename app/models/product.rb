class Product < ApplicationRecord

#  include ActiveModel::Serializers::JSON


# belongs_to :buyer, class_name: 'User'
# belongs_to :seller, class_name: 'User'
# belongs_to :order


include Rails.application.routes.url_helpers
validates :image, {
    presence: true
  }
  
  def get_image_url
    url_for(self.image)
  end

    has_one_attached :image
  
  




end
