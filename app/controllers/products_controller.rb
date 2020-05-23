class ProductsController < ApplicationController

#   def create 
#     image = Cloudinary::Uploader.upload(params[:image])
#     video = Cloudinary::Uploader.upload(params[:video], :resource_type => :video)
#     product = Product.create(image: image["url"], video: video["url"])
#     render json: poduct
# end


# def index
#   render json: Product.where
# end

def create


  @product = Product.create(product_params())
  respond_to_product()
end

private

def product_params
  params.permit( :title, :image)
end

private

def respond_to_product()
  if @product.valid?()
    product_serializer = ProductSerializer.new(product: @product)
    render json: product_serializer.serialize_new_product()
  else
    render json: { errors: product.errors }, status: 400
  end
end

    
end
