class ProductSerializer < ActiveModel::Serializer
  # attributes :id, :order_id, :seller_id, :buyer_id, :title, :type_of, :category, :price, :image, :video, :updated_at

  def initialize(product: nil)
    @product = product

  end

  def serialize_new_product()

    serialized_new_product = serialize_product(@product)
    serialized_new_product.to_json()
  end
  
  private
   def serialize_product(product)
    {
      product: {
        id: product.id,
        image_url: product.get_image_url(),
        title: product.title,
  
      }
    }
  end


  
end
