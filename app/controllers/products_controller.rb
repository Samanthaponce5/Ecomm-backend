class ProductsController < ApplicationController
    def index
        products = Product.all
        render json: products
    end
    
    def show
        product = Product.find_by(id: params[:id])
        image = rails_blob_path(product.image)
        if product
          render json:{ product: product, image:image }
            # render json: product,except:[:created_at,:updated_at]
        else
            render json: { message: 'No product found with that id' }
        end
    end 

    def create 
      # product = Product.create(product_params)
      # render json: product 

      product = Product.create(product_params)
    render json: product


    # product = Product.create(title: params[:product][:title], category: params[:product][:category])
    # render json: product 

    end

    def update 
    
      product = Product.find(params[:id])
      product.update(image: params[:image])
      image_url=rails_blob_path(product.image)
      # byebug
      render json:{product: product, image_url: image_url}
      
  
    end


private
def product_params
  params.require(:product).permit(:title, :type_of, :category,:price )
end

def product_params
  params.require(:product).permit(:title, :type_of, :category,:price )
end


    #   def create 
#     image = Cloudinary::Uploader.upload(params[:image])
#     video = Cloudinary::Uploader.upload(params[:video], :resource_type => :video)
#     product = Product.create(image: image["url"], video: video["url"])
#     render json: poduct
# end


# def index
#   render json: Product.where
# end

# def create


#   @product = Product.create(product_params())
#   respond_to_product()
# end

# private

# def product_params
#   params.permit( :title, :image)
# end

# private

# def respond_to_product()
#   if @product.valid?()
#     product_serializer = ProductSerializer.new(product: @product)
#     render json: product_serializer.serialize_new_product()
#   else
#     render json: { errors: product.errors }, status: 400
#   end
# end
end
