class ProductsController < ApplicationController
    def index
        products = Product.all
        render json: products
    end
    
    def show
        product = Product.find_by(id: params[:id])
        if product
          render json: product
  
            # render json: product,except:[:created_at,:updated_at]
        else
            render json: { message: 'No product found with that id' }
        end
    end 

    def create 
      product = Product.create(product_params)
      render json: product
    end

    # def update 
    #   product = Product.find(params[:id])
    #   product.update(image: params[:image])
    #   image_url=rails_blob_path(product.image)

    #   render json:{product: product, image_url: image_url}
    # end


  private
  def product_params
    params.require(:product).permit(:title, :type_of, :category,:price,:image)
  end
end
